from django.conf.urls import patterns, include, url
from django.conf import settings
from django.conf.urls.static import static
from cms.sitemaps import CMSSitemap

# Uncomment the next two lines to enable the admin:
from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('',
    # Examples:
    url(r'^$', 'myfirstapp.views.home'),
    # url(r'^myproject/', include('myproject.foo.urls')),

    # Uncomment the admin/doc line below to enable admin documentation:
    url(r'^admin/doc/', include('django.contrib.admindocs.urls')),

    # Uncomment the next line to enable the admin:
    url(r'^admin/', include(admin.site.urls)),

    # Sitemap
    url(r'^sitemap\.xml$', 'django.contrib.sitemaps.views.sitemap', {'sitemaps': {'cmspages': CMSSitemap}}),
    url(r'^', include('cms.urls')),
)

# Serve Media files (Only when DEBUG is True)
urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
