from time import sleep
from celery import shared_task

@shared_task
def notify_customer(message):
    print('Sendin 10000...')
    print(message)
    sleep(10)
    print('end sending emails')