from django.shortcuts import render
from django.http import HttpResponse
from django.core.exceptions import ObjectDoesNotExist
from django.db.models import Value, Q, F
from django.db.models.aggregates import Count, Max, Min, Sum
from django.db import transaction
from commanda.models import Product
from commanda.models import Allergeni, Collection, Ordine

def product_list(request):
    return HttpResponse('ok')


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