import os
import sys
import django



SECRET_KEY = 'q*lq9&&^%*#*^*!@@)_&@@$!&*(asd67ta8dsjgajsdg'


# the site root is one level up from where settings.py is
DJANGO_ROOT = os.path.dirname(os.path.realpath(django.__file__))
SITE_ROOT = os.path.dirname(os.path.realpath(__file__)).rsplit('/', 1)[0]
PROJECT_ROOT = os.path.dirname(os.path.realpath(__file__)).rsplit('/', 2)[0]

if True:
    ENVIRONMENT = 'local'
else:
    ENVIRONMENT = 'production'

print("Environment: %s" % ENVIRONMENT)

ALLOWED_HOSTS = [
    'localhost', '127.0.0.1', 
]

# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/1.10/howto/static-files/

STATIC_URL = '/media/static/'

# The STATIC_ROOT variable in settings.py defines the single folder you want to collect all your static files into (using ./manage.py collectstatic ).
if ENVIRONMENT == 'local':
    STATIC_ROOT = os.path.join(SITE_ROOT, 'collectstatic/tractatusapp')
else:
    #  modify as needed
    STATIC_ROOT = "/home/webapps/media/"
    MEDIA_URL = 'http://example.org/upload/'
    STATIC_URL = 'http://example.org/media/'
    ADMIN_MEDIA_PREFIX = 'http://example.org/media/admin/'

# This setting defines the additional locations the staticfiles app will traverse if the FileSystemFinder finder is enabled
STATICFILES_DIRS = (os.path.join(SITE_ROOT, 'src/static'), )



# Database
# https://docs.djangoproject.com/en/1.10/ref/settings/#databases

if ENVIRONMENT == 'local':

    DATABASES = {
        'default': {
            'ENGINE': 'django.db.backends.sqlite3',
            'NAME': os.path.join(SITE_ROOT, 'db.sqlite3'),
        }
    }


else:

    DATABASES = {
        'default': {
            'ENGINE': 'django.db.backends.mysql',
            'NAME': 'TODO',
            'USER': 'TODO',
            'PASSWORD': 'TODO',
            'HOST': '',
        }
    }
