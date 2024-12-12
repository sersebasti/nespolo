from django.urls import include, path
from . import views
from rest_framework.routers import SimpleRouter, DefaultRouter


router = DefaultRouter()
router.register('menuitems', views.MenuItemViewSet, basename='menuitem')
router.register('tables', views.TableViewSet, basename='table')
router.register('collections', views.CollectionViewSet, basename='collection')
router.urls


urlpatterns = [
   
    path('', include(router.urls)),
    #path('menuitems/<int:pk>/', views.MenuItemViewSet.as_view(), name='menuitem-details'),
    #path('tables/', views.TableList.as_view(),name='tables'),
    #path('tables/<int:pk>/', views.TableDetails.as_view(),name='tables-details'),
    #path('collections/', views.CollectionList.as_view(), name='collection-list'),
    #path('collections/<int:pk>/', views.CollectionDetails.as_view(), name='collection-details'),
]

