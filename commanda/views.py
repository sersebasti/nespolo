from django.shortcuts import render
from django.http import HttpResponse

# Create your views here.
def say_hello(request):
    x = "Sergio"
    y = "Sebastiani"
    return render(request,'hello.html',{'name': x + '  +  ' + y})