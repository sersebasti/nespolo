from django.db import models


class Table(models.Model):
    number = models.IntegerField(unique=True)
    seats = models.IntegerField()

    def __str__(self):
        return f"Tavolo {self.number}"

class Collection(models.Model):
    name = models.CharField(max_length=50, unique=True)  # Nome della collezione (bar, cucina, pizzeria)

    def __str__(self):
        return self.name
    
class Allergen(models.Model):
    name = models.CharField(max_length=100, unique=True)  # Nome univoco dell'allergene
    description = models.TextField(blank=True, null=True)  # Descrizione opzionale

    def __str__(self):
        return self.name


class MenuItem(models.Model):
    name = models.CharField(max_length=100)
    description = models.TextField(blank=True, null=True)  # Descrizione opzionale
    price = models.DecimalField(max_digits=6, decimal_places=2)
    allergens = models.ManyToManyField(Allergen, related_name="menu_items", blank=True)  # Relazione molti-a-molti
    collection = models.ForeignKey(Collection, on_delete=models.SET_NULL, null=True, blank=True, related_name="menu_items")  # Relazione con Collection

    def __str__(self):
        return self.name


class Order(models.Model):
    table = models.ForeignKey(Table, on_delete=models.PROTECT)
    created_at = models.DateTimeField(auto_now_add=True)
    is_completed = models.BooleanField(default=False)

    def __str__(self):
        return f"Ordine {self.id} - Tavolo {self.table.number}"


class OrderItem(models.Model):
    order = models.ForeignKey(Order, on_delete=models.CASCADE, related_name="items")
    menu_item = models.ForeignKey(MenuItem, on_delete=models.PROTECT)
    quantity = models.PositiveIntegerField()

    def __str__(self):
        return f"{self.quantity}x {self.menu_item.name} (Ordine {self.order.id})"

