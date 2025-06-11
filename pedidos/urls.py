from django.urls import path
from .views import PedidoCreateView, ResumoPedidoTemplateView

urlpatterns = [
    path('criar/', PedidoCreateView.as_view(),
         name='novopedido'),
    path('resumo/<int:idpedido>/', ResumoPedidoTemplateView.as_view(),
         name='resumopedido'),
]