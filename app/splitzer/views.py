from django.http import HttpResponse

# Create your views here.
def index(request):
    return HttpResponse("<h2>Splitzer API is running</h2>")