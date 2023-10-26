from django.shortcuts import render
from django.http import HttpResponse
from commanda.models import Product

# Create your views here.
def say_hello(request):
    query_set = Product.objects.all()
    for product in query_set:
        print(product)
    
    x = "Sergio"
    y = "Sebastiani"
    # return HttpResponse('Ciao')
    return render(request,'hello.html',{'name': x + '  +  ' + y})