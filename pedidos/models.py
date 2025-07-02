from django.contrib.auth import get_user_model
from django.db import models
from django.utils.translation import gettext_lazy as _

from catalogo.models import Produto
user = get_user_model()

class Pedido(models.Model):
    cliente = models.ForeignKey(user, default=1,
                                on_delete=models.CASCADE)
    criado = models.DateTimeField(auto_now_add=True)
    atualizado = models.DateTimeField(auto_now=True)
    pago = models.BooleanField(default=False)
    braintree_id = models.CharField(max_length=150, blank=True)

    class Meta:
        ordering = ('-criado',)

    def __str__(self):
        return _(f'Pedido {self.id}')

    def get_total_geral(self):
        return sum(item.get_total() for item in self.itens_pedido.all())


class ItensPedido(models.Model):
    pedido = models.ForeignKey(Pedido, on_delete=models.CASCADE,
                               related_name='itens_pedido')
    produto = models.ForeignKey(Produto, on_delete=models.CASCADE,
                                related_name='itens_produto')
    preco_unit = models.DecimalField(max_digits=10, decimal_places=2)
    quantidade = models.PositiveSmallIntegerField(default=1)

    class Meta:
        verbose_name = _("Item Pedido")
        verbose_name_plural = _("Itens Pedido")
        ordering = ('-pedido',)

    def __str__(self):
        return _(f'Item {self.id} do pedido{self.pedido.id}')

    def get_total(self):
        return self.preco_unit * self.quantidade