# Generated by Django 4.2.6 on 2023-11-11 11:57

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('commanda', '0006_tipoprodotto_product_tipo_prodotto'),
    ]

    operations = [
        migrations.AddField(
            model_name='tipoprodotto',
            name='description',
            field=models.CharField(max_length=255, null=True),
        ),
    ]
