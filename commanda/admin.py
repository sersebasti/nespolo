from django.contrib import admin
from . import models
# Register your models here.

@admin.register(models.Product)
class ProductAdmin(admin.ModelAdmin):
    list_display = ['title', 'collection', 'price']
    list_editable = ['price']

@admin.register(models.Allergeni) 
class AlligerniAdmin(admin.ModelAdmin):
    list_display = ['title', 'number']
    list_editable = ['number'] 

#admin.site.register(models.Allergeni)
#admin.site.register(models.Product)
admin.site.register(models.TipoProdotto)