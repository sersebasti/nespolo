# Generated by Django 4.2.6 on 2024-05-30 19:26

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('commanda', '0048_remove_commanda_created_at'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='tavolo',
            name='created_at',
        ),
        migrations.AddField(
            model_name='commanda',
            name='to_production',
            field=models.DateTimeField(null=True),
        ),
    ]
