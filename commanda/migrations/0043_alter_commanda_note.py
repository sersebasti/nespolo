# Generated by Django 4.2.6 on 2024-01-04 22:46

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('commanda', '0042_alter_commanda_note'),
    ]

    operations = [
        migrations.AlterField(
            model_name='commanda',
            name='note',
            field=models.CharField(max_length=2000, null=True),
        ),
    ]