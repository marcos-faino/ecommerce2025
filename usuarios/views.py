from django.contrib import messages
from django.contrib.auth.models import Group
from django.shortcuts import get_object_or_404
from django.urls import reverse_lazy
from django.views.generic import CreateView
from django.utils import translation
from django.utils.translation import gettext as _
from .forms import CadUsuarioForm



class UsuarioCreateView(CreateView):
    template_name = 'usuario/cadusuario.html'
    form_class = CadUsuarioForm
    success_url = reverse_lazy('loginuser')

    def form_valid(self, form):
        form.cleaned_data
        grupo = get_object_or_404(Group, name='clientes')
        us = form.save()
        us.groups.add(grupo)
        messages.success(self.request, _('Usuário cadastrado!!!'))
        return super().form_valid(form)

    def form_invalid(self, form):
        messages.error(self.request, _('Cadastro não efetuado!!!'))
        return super().form_invalid(form)

    def get_context_data(self, **kwargs):
        cont = super().get_context_data(**kwargs)
        cont['idioma'] = translation.get_language()
        return cont