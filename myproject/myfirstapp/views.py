from django.shortcuts import render_to_response
from django.template import RequestContext

def home(request):

    d = {}

    return render_to_response('myfirstapp/home.html', d, RequestContext(request))
