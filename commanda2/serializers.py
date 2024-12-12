from decimal import Decimal
from rest_framework import serializers
from commanda import models
from commanda2.models import MenuItem, Collection, Table


class TableSerializer(serializers.ModelSerializer):
    class Meta:
        model = Table
        fields = ['id','number','seats']  # Include all fields of Collection


class CollectionSerializer(serializers.ModelSerializer):
    class Meta:
        model = Collection
        fields = ['id','name']  # Include all fields of Collection
        

class MenuItemSerializer(serializers.ModelSerializer):
    
    collection = serializers.PrimaryKeyRelatedField(
        queryset=Collection.objects.all(),
        write_only=True  # Accept primary key for write operations
    )
        
    collection_data = CollectionSerializer(source='collection', read_only=True)
    
    class Meta:
        model = MenuItem
        fields = ['id','name','description','price', 'allergens', 'collection','collection_data','price_tax']

    
    price_tax = serializers.SerializerMethodField(method_name='calculate_tax')
    
    def calculate_tax(self, menu_item: MenuItem):
        tax_rate = Decimal('0.2')
        return  menu_item.price + menu_item.price  * tax_rate;    
    
    
