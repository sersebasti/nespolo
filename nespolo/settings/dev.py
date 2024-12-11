from .common import *
import socket

DEBUG = True

SECRET_KEY  = 'django-insecure-ngfsa45@vy$$k39th=cqpj2*et*9y!&!d$a_vk58yjo8#s)05$'


'''
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'my_db',
        'HOST': 'sersebasti.ddns.net',
        'PORT': '8306',
        'USER': 'root',
        'PASSWORD': 'local'
    },
    'lite_db': {
        'ENGINE': 'django.db.backends.sqlite3',
        'NAME': BASE_DIR / 'db.sqlite3',
    }
    
}
'''

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'my_db',
        'HOST': 'mysql-server-80_nespolo',
        'PORT': '3306',
        'USER': 'root',
        'PASSWORD': 'local'
    },
    'lite_db': {
        'ENGINE': 'django.db.backends.sqlite3',
        'NAME': BASE_DIR / 'db.sqlite3',
    }
    
}

INSTALLED_APPS += [
    'debug_toolbar',
]


# Dynamically generate INTERNAL_IPS for local and Docker setups
hostname, _, ips = socket.gethostbyname_ex(socket.gethostname())
INTERNAL_IPS = [ip[: ip.rfind(".")] + ".1" for ip in ips] + ["127.0.0.1"]