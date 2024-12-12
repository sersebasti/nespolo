from rest_framework.response import Response
from rest_framework import status

def get_object_or_404(model, object_id, error_message=None):
    try:
        return model.objects.get(id=object_id)
    except model.DoesNotExist:
        return Response({'error': error_message or f'{model.__name__} not found'}, status=status.HTTP_404_NOT_FOUND)
