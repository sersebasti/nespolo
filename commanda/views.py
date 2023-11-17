from django.shortcuts import render
from django.http import HttpResponse
from django.core.exceptions import ObjectDoesNotExist
from django.db.models import Q, F
from commanda.models import Product


def menu(request):
    menu_items = Product.objects.all()
    return render(request, 'menu.html', {'menu_items': list(menu_items)})


# Create your views here.
def say_hello(request):
    # query_set = Product.objects.all()
    # query_set.filter()
    # list(query_set)
    #for product in query_set:collection__title__contains="Bar"
    #    print(product)
    
    queryset = Product.objects.all().values('title','price','collection__title').count()
    
        
    y = "Sergio"
    # return HttpResponse('Ciao')
    return render(request,'hello.html',{'name': y, 'products': list(queryset)})