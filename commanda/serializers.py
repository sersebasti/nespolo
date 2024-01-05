from decimal import Decimal
from rest_framework import serializers
from commanda.models import Product, Collection, Tavolo, Commanda
from .models import Product, Review



class TavoloSerializer(serializers.ModelSerializer):
    class Meta:
        model = Tavolo
        fields = ['id', 'nome', 'locked']   


class CollectionSerializer(serializers.ModelSerializer):
    class Meta:
        model = Collection
        fields = ['id', 'title']        


class ProductSerializer(serializers.ModelSerializer):
    class Meta:
        model = Product 
        fields = ['id', 'title', 'price', 'description', 'collection', 'tipo_prodotto']  
    
    #price_with_tax = serializers.SerializerMethodField(method_name='calculate_tax')
        
    #def calculate_tax(self, product: Product):
    #    return product.price * Decimal(1.1)
    
    
class CommandaSerializer(serializers.ModelSerializer):
    product_title = serializers.ReadOnlyField(source='product.title')
    class Meta:
        model = Commanda
        fields = ['id', 'tavolo', 'product', 'product_title', 'quantity','production_status', 'note']
           
        
        
class ReviewSerializer(serializers.ModelSerializer):
    class Mata:
        model = Review
        fields = ['id', 'date', 'name', 'description', 'product']
             
        
        