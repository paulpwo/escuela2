from django import forms
from django.contrib.auth.forms import UserChangeForm
from django.contrib.auth.models import User

from app.inicio.models import Tokens


class TokensForm(forms.ModelForm):
    class Meta:
        model = Tokens
        exclude = ['acudiente']


class userChangeForm(UserChangeForm):
    password = None

    class Meta:
        model = User
        fields = ('first_name', 'last_name', 'email', )
