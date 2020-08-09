from django.http import HttpResponse

def index(request):
    return HttpResponse("WELCOME TO A NEW DJANGO PROJECT")
