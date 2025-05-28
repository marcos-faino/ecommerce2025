from django import forms

PRODUTO_QUANT = [
    ((i, str(i)) for i in range(1, 21))
]

class CarrinhoAddProdForm(forms.Form):
    quant = forms.TypedChoiceField(choices=PRODUTO_QUANT,
                                   coerce=int)
    alterar = forms.BooleanField(initial=False,
                                 widget=forms.HiddenInput)