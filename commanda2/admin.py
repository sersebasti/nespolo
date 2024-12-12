from django.contrib import admin
from .models import Table, Collection, Allergen, MenuItem, Order, OrderItem


@admin.register(Table)
class TableAdmin(admin.ModelAdmin):
    list_display = ('id', 'number', 'seats')  # Mostra tutti i campi di Table
    search_fields = ('number',)
    ordering = ('number',)


@admin.register(Collection)
class CollectionAdmin(admin.ModelAdmin):
    list_display = ('id', 'name')  # Mostra tutti i campi di Collection
    search_fields = ('name',)
    ordering = ('name',)


@admin.register(Allergen)
class AllergenAdmin(admin.ModelAdmin):
    list_display = ('id', 'name', 'description')  # Mostra tutti i campi di Allergen
    search_fields = ('name', 'description')
    ordering = ('name',)


@admin.register(MenuItem)
class MenuItemAdmin(admin.ModelAdmin):
    list_display = ('id', 'name', 'description', 'price', 'collection')  # Mostra tutti i campi di MenuItem
    list_filter = ('collection',)
    search_fields = ('name','description')
    ordering = ('name',)


@admin.register(Order)
class OrderAdmin(admin.ModelAdmin):
    list_display = ('id', 'table', 'created_at', 'is_completed')  # Mostra tutti i campi di Order
    list_filter = ('is_completed', 'created_at')
    search_fields = ('table__number',)
    ordering = ('-created_at',)


@admin.register(OrderItem)
class OrderItemAdmin(admin.ModelAdmin):
    list_display = ('id', 'order', 'menu_item', 'quantity')  # Mostra tutti i campi di OrderItem
    search_fields = ('menu_item__name', 'order__id')
    ordering = ('order', 'menu_item')

