from django.conf.urls import url
# from django.views.generic.simple import direct_to_template
from django.views.generic import TemplateView

from . import views_wholetext
from . import views_onepager
from . import views_typewriter
from . import views_spacetree
from . import views_d3tree

app_name = 'tractatusapp'
urlpatterns = [

   # WHOLE TEXT
   # just for testing, not very useful...
   # =========
   url(r'^wholetext$', views_wholetext.wholetext, name='wholetext'),

   # ONE-PAGER
   # =========
   url(r'^onepage$', views_onepager.index, name='indexmanysentences'),
   #TODO the cached version can be removed later
   url(r'^onepage/cached$', views_onepager.index_cached, name='indexmanysentences_cached'),




   # TYPEWRITER APP
   # =========
   url(r'^typewriter/(?P<num>.+)/(?P<version>\w+)/$', views_typewriter.get_sentence, name='get_sentence_version'),
   url(r'^typewriter/(?P<num>.+)/$', views_typewriter.get_sentence, name='get_sentence'),
   url(r'^typewriter$', views_typewriter.index, name='indexsentence'),



   # SPACETREE
   # =========
   url(r'^spacetree$', views_spacetree.spacetree, name='spacetree'),



   # D3 TREE teSt
   # =========
   url(r'^d3tree$', views_d3tree.index, name='d3index'),
   url(r'^d3tree/getjson$', views_d3tree.getjson, name='getjson' ),




   #finally
   # =========
   url(r'^$',
      TemplateView.as_view(template_name='tractatusapp/home.html'), name='witt_about'
      ),

]


# DEBUG
if False:
   urlpatterns += [





   ]
