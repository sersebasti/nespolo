# Generated by Django 4.2.6 on 2024-12-12 07:47

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('commanda2', '0002_collection_menuitem_collection'),
    ]

    operations = [
        migrations.AddField(
            model_name='menuitem',
            name='description',
            field=models.TextField(blank=True, null=True),
        ),
    ]
