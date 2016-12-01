# -*- coding: utf-8 -*-
# Generated by Django 1.9.7 on 2016-07-10 17:31
from __future__ import unicode_literals

import app.inicio.models
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('inicio', '0012_notificaciones_estudiantes'),
    ]

    operations = [
        migrations.AddField(
            model_name='profile',
            name='facebook',
            field=models.CharField(blank=True, max_length=144, null=True),
        ),
        migrations.AddField(
            model_name='profile',
            name='foto',
            field=models.ImageField(default='dprofile.jpg', upload_to=app.inicio.models.Profile.ImageProfile),
        ),
        migrations.AddField(
            model_name='profile',
            name='twitter',
            field=models.CharField(blank=True, max_length=144, null=True),
        ),
    ]
