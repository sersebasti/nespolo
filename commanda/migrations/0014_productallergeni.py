# Generated by Django 4.2.6 on 2023-11-25 19:56

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('commanda', '0013_alter_product_tipo_prodotto'),
    ]

    operations = [
        migrations.CreateModel(
            name='ProductAllergeni',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('allergen', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='commanda.allergeni')),
                ('product', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='commanda.product')),
            ],
        ),
    ]