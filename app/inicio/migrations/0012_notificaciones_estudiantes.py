# -*- coding: utf-8 -*-
# Generated by Django 1.9.7 on 2016-07-09 18:18
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('inicio', '0011_auto_20160709_1247'),
    ]

    operations = [
        migrations.AddField(
            model_name='notificaciones',
            name='estudiantes',
            field=models.ManyToManyField(to='inicio.Estudiantes'),
        ),
    ]