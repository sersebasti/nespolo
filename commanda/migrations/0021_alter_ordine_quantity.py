# Generated by Django 4.2.6 on 2023-11-25 22:21

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('commanda', '0020_ordine_delete_commanda'),
    ]

    operations = [
        migrations.AlterField(
            model_name='ordine',
            name='quantity',
            field=models.PositiveSmallIntegerField(default=1),
        ),
    ]