from django.shortcuts import render
from django.http import JsonResponse, HttpResponse
from django.db.models import ProtectedError
from commanda2.models import MenuItem

from rest_framework.response import Response
from rest_framework.pagination import PageNumberPagination
from rest_framework.decorators import api_view
from rest_framework import status
from rest_framework.views import APIView
from rest_framework.generics import RetrieveUpdateDestroyAPIView
from rest_framework.viewsets import ModelViewSet

from .models import MenuItem, Table, Collection
from .serializers import MenuItemSerializer, CollectionSerializer, TableSerializer
from .utils import get_object_or_404 

# Create your views here.
class MenuItemViewSet(ModelViewSet):
    queryset = MenuItem.objects.all()
    serializer_class = MenuItemSerializer

    def destroy(self, request, *args, **kwargs):
        try:
            # Attempt to delete the object
            return super().destroy(request, *args, **kwargs)
        except ProtectedError as e:
            # Handle the ProtectedError exception
            return Response(
                {
                    "error": "This item cannot be deleted because it is referenced by another record.",
                    "details": str(e)  # Optionally include the exception details
                },
                status=status.HTTP_400_BAD_REQUEST
            )
    

class TableViewSet(ModelViewSet):
    queryset = Table.objects.all()
    serializer_class = TableSerializer

    def destroy(self, request, *args, **kwargs):
        try:
            # Attempt to delete the object
            return super().destroy(request, *args, **kwargs)
        except ProtectedError as e:
            # Handle the ProtectedError exception
            return Response(
                {
                    "error": "This table cannot be deleted because it is referenced by another record.",
                    "details": str(e)  # Optionally include the exception details
                },
                status=status.HTTP_400_BAD_REQUEST
            )


class CollectionViewSet(ModelViewSet):
    queryset = Collection.objects.all()
    serializer_class = CollectionSerializer

    def destroy(self, request, *args, **kwargs):
        try:
            # Attempt to delete the object
            return super().destroy(request, *args, **kwargs)
        except ProtectedError as e:
            # Handle the ProtectedError exception
            return Response(
                {
                    "error": "This collection cannot be deleted because it is referenced by another record.",
                    "details": str(e)  # Optionally include the exception details
                },
                status=status.HTTP_400_BAD_REQUEST
            )

'''        
        
@api_view(['GET', 'PUT', 'PATCH', 'DELETE'])
def my_test_details(request, id):
    try:
        # Retrieve the MenuItem with the given id
        menuitem = MenuItem.objects.get(id=id)
    except MenuItem.DoesNotExist:
        # Return a 404 error if the item is not found
        return Response({'error': 'MenuItem not found'}, status=status.HTTP_404_NOT_FOUND)

    # Handle GET request
    if request.method == 'GET':
        serializer = MenuItemSerializer(menuitem)
        return Response(serializer.data)

    # Handle PUT request (Full Update)
    elif request.method == 'PUT':
        serializer = MenuItemSerializer(menuitem, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_200_OK)
        else:
            return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    # Handle PATCH request (Partial Update)
    elif request.method == 'PATCH':
        serializer = MenuItemSerializer(menuitem, data=request.data, partial=True)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_200_OK)
        else:
            return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
    
    elif request.method == 'DELETE':
        menuitem.delete()
        return Response({'message': 'MenuItem deleted successfully!'}, status=status.HTTP_204_NO_CONTENT)
''' 



def get_object_or_404(model, object_id, error_message=None):
    try:
        return model.objects.get(id=object_id)
    except model.DoesNotExist:
        return Response({'error': error_message or f'{model.__name__} not found'}, status=status.HTTP_404_NOT_FOUND)