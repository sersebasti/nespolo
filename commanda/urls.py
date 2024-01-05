from django.urls import include, path
from . import views
#from rest_framework.routers import SimpleRouter, DefaultRouter
from rest_framework_nested import routers
from pprint import pprint


router = routers.DefaultRouter()

#router = SimpleRouter()
router.register('products', views.ProductViewSet)
router.register('tavoli', views.TavoloViewSet)
router.register('commande', views.CommandaViewSet)

#commande_router = routers.NestedDefaultRouter(router, 'commande', lookup='commande_pk')
#commande_router.register('tavolo', views.ReviewViewSet, basename='commande-tavolo')
#pprint(router.urls)



urlpatterns = [
    path('', include(router.urls)),
    path('commande/tavolo/<int:id>/', views.commande_tavolo),
    #path('', include(commande_router.urls)),
    #path('products/', views.ProductList.as_view()),
    #path('products/<int:pk>/', views.ProductDetail.as_view()),
    #path('tavoli/', views.TavoloList.as_view()),
    #path('tavoli/<int:pk>/', views.TavoloDetail.as_view()),
    
    #path('collections/', views.collection_list),
    #path('collections/<int:id>/', views.collection_detail),
    #path('hello/', views.hello),
    #path('menu/', views.menu)
]