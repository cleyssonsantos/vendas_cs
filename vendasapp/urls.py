from django.urls import path
from vendasapp import views

urlpatterns = [
    path('', views.index,name='index')
]
