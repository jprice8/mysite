# Generated by Django 3.1.7 on 2021-03-06 22:50

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0002_auto_20210306_1619'),
    ]

    operations = [
        migrations.AddField(
            model_name='project',
            name='how_i_would_improve_it',
            field=models.TextField(default='test'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='project',
            name='what_i_learned',
            field=models.TextField(default='test'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='project',
            name='wish_i_knew_before',
            field=models.TextField(default='test'),
            preserve_default=False,
        ),
    ]
