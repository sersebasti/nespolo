from decimal import Decimal
from rest_framework import serializers
from commanda.models import Product, Collection, Tavolo, Commanda
from .models import Product, ProductImage, Review



class CollectionSerializer(serializers.ModelSerializer):
    class Meta:
        model = Collection
        fields = ['id', 'title']        

class ProductSerializer(serializers.ModelSerializer):
    class Meta:
        model = Product 
        fields = ['id', 'title', 'price', 'description', 'collection', 'tipo_prodotto']  

class CommandaSerializer(serializers.ModelSerializer):
    
    tavolo_nome = serializers.ReadOnlyField(source='tavolo.nome')
    product_title = serializers.ReadOnlyField(source='product.title')
    product_collection_id = serializers.ReadOnlyField(source='product.collection_id')
    product_price = serializers.ReadOnlyField(source='product.price')
    
    class Meta:
        model = Commanda
        #fields = ['id', 'tavolo', 'tavolo_nome', 'product', 'product_title', 'product_price', 'product_collection_id', 'quantity','production_status', 'note', 'created_at']  
        fields = ['id', 'tavolo', 'tavolo_nome', 'product', 'product_title', 'product_price', 'product_collection_id', 'quantity','production_status', 'note'] 

class CommandaPartialUpdateSerializer(serializers.ModelSerializer):
    class Meta:
        model = Commanda
        fields = ['quantity', 'production_status', 'note'] 


class TavoloSerializer(serializers.ModelSerializer):
    
    class Meta:
        model = Tavolo
        fields = ['id', 'nome', 'coperti']   
        

class ProductImageSerializer(serializers.ModelSerializer):
    class Meta:
        model = ProductImage
        fields = ['id', 'image']
                  