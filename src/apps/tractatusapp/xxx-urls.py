from django.conf.urls import url
# from django.views.generic.simple import direct_to_template
from django.views.generic import TemplateView

from . import views

app_name = 'tractatusapp'
urlpatterns = [

    # WHOLE TEXT
    # just for testing, not very useful...
    # =========
    url(r'^wholetext$', 'tractatusapp.wholetext.wholetext', name='wholetext'),
    url(r'^getjson', 'tractatusapp.wholetext.getjson', name='getjson' ),



    # ONE-PAGER
    # =========
    url(r'^tractatus/onepage$', 'tractatusapp.onepager.index', name='indexmanysentences'),
    url(r'^tractatus/onepage/nocache$', 'tractatusapp.onepager.index_no_cache', name='indexmanysentences_nocache'),
    # ===== for backward compatibility:
    url(r'^manysentences$', 'tractatusapp.onepager.index'),
    # ===== end


    # TYPEWRITER APP
    # =========
    url(r'^typewriter$', 'tractatusapp.typewriter.index', name='indexsentence'),
    url(r'^typewriter/(?P<num>.+)/(?P<version>\w+)/$', 'tractatusapp.typewriter.get_sentence', name='get_sentence_version'),
    url(r'^typewriter/(?P<num>.+)/$', 'tractatusapp.typewriter.get_sentence', name='get_sentence'),
    # ===== for backward compatibility:
    url(r'^onesentence$', 'tractatusapp.typewriter.index', ),
    url(r'^onesentence/(?P<num>.+)/(?P<version>\w+)/$', 'tractatusapp.typewriter.get_sentence'),
    url(r'^onesentence/(?P<num>.+)/$', 'tractatusapp.typewriter.get_sentence'),
    # ===== end



    # SPACETREE
    # =========
    url(r'^spacetree$', 'tractatusapp.spacetree.spacetree', name='spacetree'),
    url(r'^spacetree/nocache$', 'tractatusapp.spacetree.spacetree_no_cache', name='spacetree_no_cache'),



    # D3 VIEWS
    # =========
    url(r'^d3tree$', 'tractatusapp.d3tree.index', name='d3index'),


    #finally
    # =========
    url(r'^$',
      TemplateView.as_view(template_name='tractatusapp/home.html'), 
      name='witt_about'
      ),

]
