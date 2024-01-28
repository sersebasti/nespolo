from django.shortcuts import get_list_or_404, get_object_or_404, render

from django.db.models import Value, Q, F
from django.db.models.aggregates import Count, Max, Min, Sum

from django_filters.rest_framework import DjangoFilterBackend
from django.http import JsonResponse

from commanda.models import Product, Tavolo, Commanda
from commanda.serializers import ProductImageSerializer, ProductSerializer, TavoloSerializer, CommandaSerializer
from rest_framework.viewsets import ModelViewSet
from rest_framework.response import Response
from rest_framework.filters import SearchFilter, OrderingFilter
from rest_framework.decorators import api_view
from rest_framework.views import APIView
from .tasks import notify_customer
import logging

logger = logging.getLogger(__name__) # __name__ = commada.views


def say_hello(request):
    notify_customer.delay('hello')
    logger.info('eccomi')
    return render(request, 'hello.html', {'name': 'Sergio'})

class TavoloViewSet(ModelViewSet):
    queryset = Tavolo.objects.all()
    serializer_class = TavoloSerializer

    
    def create(self, request, *args, **kwargs):
        if Tavolo.objects.filter(nome=request.data['nome']).count():
           return Response({'error': 'Esiste già un tavolo con lo stesso nome: ' + request.data['nome']}) 
        return super().create(request, *args, **kwargs)    
    
    '''
    def destroy(self, request, *args, **kwargs):
        if Tavolo.objects.filter(tavolo_id=kwargs['pk']).count() > 0:
            return Response({'error': 'Il tavolo non può essere cancellato perchè presente in una commanda'})
        return super().destroy(request, *args, **kwargs)    
    '''

    

class ProductViewSet(ModelViewSet):
    queryset = Product.objects.all()
    serializer_class = ProductSerializer
    filter_backends = [DjangoFilterBackend, SearchFilter, OrderingFilter]
    filterset_fields = ['collection_id', 'tipo_prodotto']
    #pagination_class = PageNumberPagination
    search_fields = ['title', 'description']
    ordering_fields = ['price']
    
    def get_serializer_context(self):
        return {'request': self.request}
    
    def destroy(self, request, *args, **kwargs):
        if Commanda.objects.filter(product_id=kwargs['pk']).count() > 0:
            return Response({'error': 'Il prodotto non può essere cancellato perchè presente in una commanda'})
        return super().destroy(request, *args, **kwargs)
    
class CommandaViewSet(ModelViewSet):
    queryset = Commanda.objects.all()
    serializer_class = CommandaSerializer
    
    
class ProductImageViewSet(ModelViewSet):
    serializer_class = ProductImageSerializer
    queryset = ProductImageSerializer
    

@api_view(['GET'])
def commande_tavolo(request, id):
    if request.method == 'GET':
        query_set = Commanda.objects.filter(tavolo_id = id)
        serializer = CommandaSerializer(query_set, many=True)
        return Response(serializer.data)
    
@api_view(['GET'])
def get_tavolo_status(request):
    query_set = Commanda.objects.filter(tavolo = request.GET.get('tavolo', None)).filter(production_status = request.GET.get('production_status', None))
    serializer = CommandaSerializer(query_set, many=True)
    return Response(serializer.data)

@api_view(['GET'])
def get_tavolo_nostatus(request):
    query_set = Commanda.objects.filter(tavolo = request.GET.get('tavolo', None)).filter(~Q(production_status = request.GET.get('production_status', None)))
    serializer = CommandaSerializer(query_set, many=True)
    return Response(serializer.data)

@api_view(['GET'])
def get_elementi_conto(request):
    get_tavolo_id = request.GET.get('tavolo', None)
    
    query_set = Commanda.objects.filter(tavolo_id = get_tavolo_id).filter(production_status = 'D')
    query_set = query_set.values('product__title')
    query_set = query_set.annotate(
        total_quantity=Sum('quantity'),
        total_price=Sum(F('product__price') * F('quantity'))
    )
    query_set = query_set.order_by('-total_price')
    return JsonResponse(list(query_set), safe=False)

@api_view(['GET'])
def get_collection_status(request):
    
    get_product_collection_id = request.GET.get('product_collection_id', None)
    get_production_status = request.GET.get('production_status', None)
    
    query_set = Commanda.objects.values('id', 'quantity', "product_id", "tavolo_id", "production_status", "note", 
                                        'product__collection_id','product__title', 'tavolo__nome')
    query_set = query_set.filter(product__collection_id = get_product_collection_id).filter(production_status = get_production_status)
    return JsonResponse(list(query_set), safe=False)



    
    ''' Versionse fatta a mano 
    sql = "SELECT * , commanda_product.collection_id FROM commanda_commanda \
    LEFT JOIN commanda_product ON commanda_commanda.product_id = commanda_product.id \
    WHERE collection_id = " + request.GET.get('product_collection_id', None) + " \
    AND production_status = '" + request.GET.get('production_status', None) + "'"   
    query_set = Commanda.objects.raw(sql)
    serializer = CommandaSerializer(query_set, many=True)
    return Response(serializer.data) 
    '''
    
    
     
''' esempi corso mosh
@api_view(['GET','POST'])
def collection_list(request):

    
    if request.method == 'GET':
        query_set = Collection.objects.all()
        serializer = CollectionSerializer(query_set, many=True)
        return Response(serializer.data)
    
    elif request.method == 'POST':
        serializer = CollectionSerializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        return Response(serializer.data, status=status.HTTP_201_CREATED)
    



@api_view(['GET','PUT', 'DELETE'])
def collection_detail(request, id):

    collection = get_object_or_404(Collection, pk=id)
    
    if request.method == 'GET': 
        serializer = CollectionSerializer(collection)
        return Response(serializer.data)
    
    elif request.method == 'PUT':
        serializer = CollectionSerializer(collection, data=request.data)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        return Response(serializer.data)
    
    elif request.method == 'DELETE':
    
        if collection.product_set.count() > 0:
            return Response(status=status.HTTP_405_METHOD_NOT_ALLOWED)
        collection.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)   



def menu(request):
    menu_items = Product.objects.all().filter(collection_id = 2)
    return render(request, 'menu.html', {'menu_items': list(menu_items)})



# Create your views here.
def hello(request):
    # query_set = Product.objects.all()
    # query_set.filter()
    # list(query_set)
    #for product in query_set:collection__title__contains="Bar"
    #    print(product)
    
    #collection = Collection(pk=4)
    #collection.title = "Caffetteria Bisss"
    #collection.save()
    #Collection.objects.get(id=5).delete()

    tav = "rospigliosi"
    queryset = Ordine.objects.select_related("tavolo").select_related("product")\
        .values('tavolo__nome', 'product', 'product__price', 'quantity' )\
        .annotate(row_price=F('product__price') * F('quantity'))\
        .filter(tavolo__nome = tav)
        
    conto = queryset.aggregate(Sum('row_price'))    
    
    #queryset.aggregate(Sum())
    #queryset.filter(tavolo=tav) 
    
        
    y = "sergio"
    # return HttpResponse('Ciao')
    return render(request,'hello.html',{'name': y, 'conto': conto, "ordini": list(queryset)})




@api_view(['GET','PUT', 'DELETE'])
def product_detail(request, id):

    product = get_object_or_404(Product, pk=id)
    
    
    
    
    if request.method == 'GET': 
        serializer = ProductSerializer(product)
        return Response(serializer.data)
    
    elif request.method == 'PUT':
        serializer = ProductSerializer(product, data=request.data)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        return Response(serializer.data)
    
    elif request.method == 'DELETE':
       
        if product.elementoordine_set.count() > 0:
            return Response(status=status.HTTP_405_METHOD_NOT_ALLOWED)
        
        product.delete()
        
        return Response(status=status.HTTP_204_NO_CONTENT)

@api_view(['GET','POST'])
def product_list(request):
    
    if request.method == 'GET':
        query_set = Product.objects.select_related('collection').all()
        serializer = ProductSerializer(query_set, many=True)
        return Response(serializer.data)
    
    elif request.method == 'POST':
        serializer = ProductSerializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        return Response(serializer.data, status=status.HTTP_201_CREATED)
'''