from django.contrib.auth import get_user_model
from django import forms

non_allowed_usernames = []
non_allowed_emails = []
User = get_user_model()
class RegisterForm(forms.Form):
  username = forms.CharField()
  email = forms.EmailField()
  password = forms.CharField(
    widget=forms.PasswordInput(
      attrs={
        "class":"form-control",
        "id":"user-password"
      }
    )
  )
  def clean_username(self):
    username = self.cleaned_data.get("username")
    qs = User.objects.filter(username__iexact=username)
    if username in non_allowed_usernames:
      raise forms.ValidationError("Este es un nombre de usuario inválido, por favor intente con otro.")
    if qs.exists():
      raise forms.ValidationError("Este es un nombre de usuario inválido, por favor intente con otro.")
    non_allowed_usernames.append(username)
    print(non_allowed_usernames)
    return username

  def clean_email(self):
    email = self.cleaned_data.get("email")
    qs = User.objects.filter(email__iexact=email)
    if email in non_allowed_emails:
      raise forms.ValidationError("Este es un email de usuario inválido, por favor intente con otro.")
    if qs.exists():
      raise forms.ValidationError("Este es un email de usuario inválido, por favor intente con otro.")
    non_allowed_emails.append(email)
    return email

class LoginForm(forms.Form):
  username = forms.CharField()
  password = forms.CharField(
    widget=forms.PasswordInput(
      attrs={
        "class":"form-control",
        "id":"password",
      }
    )
  )
  
  def clean_nombre_usuario(self):
    username = self.cleaned_data.get("username")
    qs = User.objects.filter(username__iexact=username)
    if not qs.exists():
      raise forms.ValidationError("Este nombre de usuario es invalido.")
    return username