from .common import *


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
