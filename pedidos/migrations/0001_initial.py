# Generated by Django 5.2.1 on 2025-06-04 01:39

import django.db.models.deletion
from django.conf import settings
from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('catalogo', '0002_alter_produto_imagem'),
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Pedido',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('criado', models.DateTimeField(auto_now_add=True)),
                ('atualizado', models.DateTimeField(auto_now=True)),
                ('pago', models.BooleanField(default=False)),
                ('cliente', models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'ordering': ('-criado',),
            },
        ),
        migrations.CreateModel(
            name='ItensPedido',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('preco_unit', models.DecimalField(decimal_places=2, max_digits=10)),
                ('quantidade', models.PositiveSmallIntegerField(default=1)),
                ('produto', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='itens_produto', to='catalogo.produto')),
                ('pedido', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='itens_pedido', to='pedidos.pedido')),
            ],
            options={
                'verbose_name': 'Item Pedido',
                'verbose_name_plural': 'Itens Pedido',
                'ordering': ('-pedido',),
            },
        ),
    ]
