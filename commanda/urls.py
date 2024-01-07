from django.urls import include, path
from . import views
#from rest_framework.routers import SimpleRouter, DefaultRouter
from rest_framework_nested import routers

router = routers.DefaultRouter()
router.register('products', views.ProductViewSet)
router.register('tavoli', views.TavoloViewSet)
router.register('commande', views.CommandaViewSet)

urlpatterns = [
    path('', include(router.urls)),
    path('commanda/tavolo/<int:id>/', views.commande_tavolo),
    path('commanda_tavolo_status/', views.get_tavolo_status), #non utilizzata per ora 
    path('commanda_tavolo_nostatus/', views.get_tavolo_nostatus),
    path('commanda_collection_status/', views.get_collection_status), #non utilizzata forse non serve più
    path('commanda_elementi_conto/', views.get_elementi_conto)
]