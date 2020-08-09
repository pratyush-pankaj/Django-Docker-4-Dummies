from django.urls import path

from dental import views

urlpatterns = [
    path('', views.index, name='index'),
]