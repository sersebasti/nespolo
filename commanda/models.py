from django.db import models
from django.core.validators import MinValueValidator, MaxValueValidator

# Pizzerie, Cucina, Bar
class Collection(models.Model):
    title = models.CharField(max_length=255)
    
    def __str__(self) -> str:
        return self.title
    
    class Meta:
        ordering = ['title']
    
# Bibite, Birre, Antipasti, Pizza ecc...
class TipoProdotto(models.Model):
    title = models.CharField(max_length=255)
    description = models.CharField(max_length=255, null=True)
    collection = models.ForeignKey(Collection, null=False, default=3, on_delete=models.PROTECT)  
      
    def __str__(self) -> str:
        return self.title
    
class Allergeni(models.Model):
    title = models.CharField(max_length=255)
    number = models.IntegerField(default=1)
    
    def __str__(self) -> str:
        return  str(self.number) + " - " + self.title
    
    class Meta:
        ordering = ['number']

class Product(models.Model):
    title = models.CharField(max_length=255)
    description = models.TextField(null=True, blank=True)
    price = models.DecimalField(max_digits=6, decimal_places=2, validators=[MinValueValidator(1)])
    last_update = models.DateTimeField(auto_now=True)
    collection = models.ForeignKey(Collection, on_delete=models.PROTECT, null=False)
    tipo_prodotto = models.ForeignKey(TipoProdotto, null=False, on_delete=models.PROTECT)
    allergeni = models.ManyToManyField(Allergeni, null=True, blank=True)
    
    def __str__(self) -> str:
        return self.title
    
    class Meta:
        ordering = ['title']
        
        
class Tavolo(models.Model):
    nome = models.CharField(max_length=255, null=False)
    created_at = models.DateTimeField(auto_now_add=True)
    
    def __str__(self) -> str:
        return self.nome
            
class Ordine(models.Model):
    
    tavolo = models.ForeignKey(Tavolo, unique=True, on_delete=models.PROTECT)
    
    PAYMENT_STATUS_PENDING = 'P'
    PAYMENT_STATUS_COMPLETE = 'C'
    PAYMENT_STATUS_FAILED = 'F'
    PAYMENT_STATUS_CHOICES = [
        (PAYMENT_STATUS_PENDING, 'Pending'),
        (PAYMENT_STATUS_COMPLETE, 'Complete'),
        (PAYMENT_STATUS_FAILED, 'Failed')
    ]
    payment_status = models.CharField(
        max_length=1, choices=PAYMENT_STATUS_CHOICES, default=PAYMENT_STATUS_PENDING)
        
    placed_at = models.DateTimeField(auto_now_add=True)

class Ordine(models.Model):
    
    tavolo = models.ForeignKey(Tavolo, unique=True, on_delete=models.PROTECT)
    
    PAYMENT_STATUS_PENDING = 'P'
    PAYMENT_STATUS_COMPLETE = 'C'
    PAYMENT_STATUS_FAILED = 'F'
    PAYMENT_STATUS_CHOICES = [
        (PAYMENT_STATUS_PENDING, 'Pending'),
        (PAYMENT_STATUS_COMPLETE, 'Complete'),
        (PAYMENT_STATUS_FAILED, 'Failed')
    ]
    payment_status = models.CharField(
        max_length=1, choices=PAYMENT_STATUS_CHOICES, default=PAYMENT_STATUS_PENDING)
        
    placed_at = models.DateTimeField(auto_now_add=True)
    
    
    #product = models.ForeignKey(Product, on_delete=models.PROTECT)
    #quantity = models.PositiveSmallIntegerField(default=1)
    
    #def conto(self, tav):
    #    return sum( (product.price * product.quantity) for product in self.product.filter(tavolo = tav))
        
class ElementoOrdine(models.Model):
    order = models.ForeignKey(Ordine, on_delete=models.PROTECT)
    product = models.ForeignKey(Product, on_delete=models.PROTECT)
    quantity = models.PositiveIntegerField(default=1)


#class Commanda(models.Model): 
    #ordine = models.ForeignKey(Ordine,on_delete=models.PROTECT)
    #created_at = models.DateTimeField(auto_now_add=True)
    #quantity = models.PositiveSmallIntegerField()
    #def total_price(self):
    #    return sum(product.price for product in self.product.all())
    #def __str__(self):
    #    return f"Order for {self.tavolo.nome} - Total: ${self.total_price()}"


    


#class OrderItem(models.Model):
#    order = models.ForeignKey(Ordine, on_delete=models.CASCADE)
#    product = models.ForeignKey(Product, on_delete=models.CASCADE)
#    quantity = models.PositiveIntegerField(default=1)
       
    
    
class Conto(models.Model):
    tavolo = models.ForeignKey(Tavolo, on_delete=models.CASCADE)
    order_date = models.DateTimeField(auto_now_add=True)
    
class ContoBakup(models.Model):
    tavolo = models.CharField(max_length=255, null=False)
    order_date = models.DateTimeField(null=False, auto_now_add=False)       
        


    
'''
class Promotion(models.Model):
    description = models.CharField(max_length=255)
    discount = models.FloatField()


class Customer(models.Model):
    MEMBERSHIP_BRONZE = 'B'
    MEMBERSHIP_SILVER = 'S'
    MEMBERSHIP_GOLD = 'G'

    MEMBERSHIP_CHOICES = [
        (MEMBERSHIP_BRONZE, 'Bronze'),
        (MEMBERSHIP_SILVER, 'Silver'),
        (MEMBERSHIP_GOLD, 'Gold'),
    ]
    first_name = models.CharField(max_length=255)
    last_name = models.CharField(max_length=255)
    email = models.EmailField(unique=True)
    phone = models.CharField(max_length=255)
    birth_date = models.DateField(null=True)
    membership = models.CharField(
        max_length=1, choices=MEMBERSHIP_CHOICES, default=MEMBERSHIP_BRONZE)
        
    
class Adress(models.Model):
    street = models.CharField(max_length=255)
    city = models.CharField(max_length=255)
    customer = models.ForeignKey(Customer,on_delete=models.CASCADE)
    zipcode = models.IntegerField(null=True)
'''    

'''    
class Order(models.Model):
    PAYMENT_STATUS_PENDING = 'P'
    PAYMENT_STATUS_COMPLETE = 'C'
    PAYMENT_STATUS_FAILED = 'F'
    PAYMENT_STATUS_CHOICES = [
        (PAYMENT_STATUS_PENDING, 'Pending'),
        (PAYMENT_STATUS_COMPLETE, 'Complete'),
        (PAYMENT_STATUS_FAILED, 'Failed')
    ]

    placed_at = models.DateTimeField(auto_now_add=True)
    payment_status = models.CharField(
        max_length=1, choices=PAYMENT_STATUS_CHOICES, default=PAYMENT_STATUS_PENDING)
    customer = models.ForeignKey(Customer, on_delete=models.PROTECT)
    
    
class OrderItem(models.Model):
    order = models.ForeignKey(Order, on_delete=models.PROTECT)
    product = models.ForeignKey(Product, on_delete=models.PROTECT)
    quantity = models.PositiveSmallIntegerField()
    unit_price = models.DecimalField(max_digits=6, decimal_places=2)
'''

'''
class Cart(models.Model):
    created_at = models.DateTimeField(auto_now_add=True)


class CartItem(models.Model):
    cart = models.ForeignKey(Cart, on_delete=models.CASCADE)
    product = models.ForeignKey(Product, on_delete=models.CASCADE)
    quantity = models.PositiveSmallIntegerField()
'''