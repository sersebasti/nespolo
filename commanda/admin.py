from pyexpat.errors import messages
from typing import Any
from django.contrib import admin
from django.db.models.query import QuerySet
from django.http.request import HttpRequest
from . import models
# Register your models here.

class PriceFilter(admin.SimpleListFilter):
    title = 'price'
    parameter_name = 'price'
    
    def lookups(self, request: Any, model_admin: Any) -> list[tuple[Any, str]]:
        return [
            ('<8', 'Low')
        ]
        
    def queryset(self, request: Any, queryset: QuerySet[Any]) -> QuerySet[Any] | None:
        if self.value() == '<8':
            return queryset.filter(price__lt=8)
          
    

@admin.register(models.Product)
class ProductAdmin(admin.ModelAdmin):
    actions = ['print_elements']
    list_display = ['title', 'collection_title', 'price']
    list_editable = ['price']
    list_select_related = ['collection']
    #list_per_page = 10
    list_filter = ['tipo_prodotto__title', PriceFilter]
    ordering = ['collection__title', 'price']
    search_fields =  ['title']
    autocomplete_fields = ['tipo_prodotto']
      
    def collection_title(self, product):
           return product.collection.title
    
    @admin.action(description='test action')
    def print_elements(self, request, queryset):
        self.message_user(request, list(queryset))      
    
  

@admin.register(models.Allergeni) 
class AlligerniAdmin(admin.ModelAdmin):
    list_display = ['title', 'number']
    list_editable = ['number'] 

#admin.site.register(models.Allergeni)
#admin.site.register(models.Product)
@admin.register(models.TipoProdotto)
class TipoProdottoAdmin(admin.ModelAdmin):
        search_fields =  ['title']


@admin.register(models.Collection)
class CollectionAdmin(admin.ModelAdmin):
    list_display = ['title', 'products_cout']
    
    def products_cout(self, collection):
        print(self)
        return 1
        
    def get_queryset(self, request: HttpRequest) -> QuerySet[Any]:
        return super().get_queryset(request)    
        
@admin.register(models.Tavolo)
class TavoloAdmin(admin.ModelAdmin):
    list_display = ['nome']
    actions = ['custom_action']
    
    def custom_action(self, request, queryset):
        # Your custom method logic goes here
        # `queryset` contains the selected orders

        # For example, let's mark the selected orders as processed
        #queryset.update(processed=True)

        self.message_user(request, 'Successfully marked orders as processed.')

    custom_action.short_description = 'Mark selected orders as processed'
    

class ElementoOrdineInline(admin.TabularInline):
    model = models.ElementoOrdine
    autocomplete_fields = ['product']
    min_num = 1
    extra = 1        
    
@admin.register(models.Ordine)
class OrdineAdmin(admin.ModelAdmin):
   list_display = ['tavolo']
   #list_editable = ['quantity']
   list_filter = ['tavolo__nome']
   inlines = [ElementoOrdineInline]
   # check is server configured to serv estatic file
   #class Media:
   #     js = ('/commanda/js/admin_disable_links.js', )

   #autocomplete_fields = ['product']

    
