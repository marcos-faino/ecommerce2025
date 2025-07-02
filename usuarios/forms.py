from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth import get_user_model
from django.utils.translation import gettext_lazy as _

user = get_user_model()

class CadUsuarioForm(UserCreationForm):

    class Meta:
        model = user
        fields = ['first_name', 'last_name',
                  'email', 'username',
                  'password1', 'password2']

