from locust import HttpUser, task
from random import randint


class WebsiteUser(HttpUser):
    @task
    def view_products(self):
        self.client.get('/commanda/products/')