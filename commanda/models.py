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
    allergeni = models.ManyToManyField(Allergeni, blank=True)
    def __str__(self) -> str:
        return self.title
    class Meta:
        ordering = ['title']
        
class ProductImage(models.Model):
    Product = models.ForeignKey(Product, on_delete=models.CASCADE)
    image = models.ImageField(upload_to='store/images')
            
        
        
class Tavolo(models.Model):
    nome = models.CharField(max_length=255, null=False, unique=True)
    created_at = models.DateTimeField(auto_now_add=True)
    locked = models.BooleanField(default = False)
    
    def __str__(self) -> str:
        return self.nome


class Commanda(models.Model):
    tavolo = models.ForeignKey(Tavolo, on_delete=models.CASCADE)
    product = models.ForeignKey(Product, on_delete=models.PROTECT)
    quantity = models.PositiveIntegerField(default=1)
    note = models.CharField(max_length=2000, null=True, blank=True)
    
    STATUS_A = 'A'
    STATUS_B = 'B'
    STATUS_C = 'C'
    STATUS_D = 'D'
    
    STATUS = [
        (STATUS_A, 'SuCommanda'),
        (STATUS_B, 'InProduzione'),
        (STATUS_C, 'ProduzioneCompletata'),
        (STATUS_D, 'Servito'),
    ]
    production_status = models.CharField(
        max_length=1, choices=STATUS, default=STATUS_A)
    

class Review(models.Model):
    product = models.ForeignKey(Product, on_delete=models.CASCADE)
    name = models.CharField(max_length=255)
    description = models.TextField()
    date = models.DateField(auto_now_add=True)
    

'''           
class Ordine(models.Model):
    
    tavolo = models.ForeignKey(Tavolo, on_delete=models.PROTECT)

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

     
class ElementoOrdine(models.Model):
    order = models.ForeignKey(Ordine, on_delete=models.PROTECT)
    product = models.ForeignKey(Product, on_delete=models.PROTECT)
    quantity = models.PositiveIntegerField(default=1)
'''

'''    
class Conto(models.Model):
    tavolo = models.ForeignKey(Tavolo, on_delete=models.CASCADE)
    order_date = models.DateTimeField(auto_now_add=True)
    
class ContoBakup(models.Model):
    tavolo = models.CharField(max_length=255, null=False)
    order_date = models.DateTimeField(null=False, auto_now_add=False)       
'''        


    
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