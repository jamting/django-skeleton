DEBUG = True
TEMPLATE_DEBUG = DEBUG

INTERNAL_IPS = ('127.0.0.1', '10.0.2.15', '10.0.2.2')

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql_psycopg2',  # Add 'postgresql_psycopg2', 'mysql', 'sqlite3' or 'oracle'.
        'NAME': 'db_myproject',                              # Or path to database file if using sqlite3.
        'USER': 'pg_myproject',                              # Not used with sqlite3.
        'PASSWORD': 'myproject',                             # Not used with sqlite3.
        'HOST': '',                                          # Set to empty string for localhost. Not used with sqlite3.
        'PORT': '',                                          # Set to empty string for default. Not used with sqlite3.
    }
}

EMAIL_HOST = 'mail2.bahnhof.se'
DEFAULT_FROM_EMAIL = 'mattias@jwd.se'
SERVER_EMAIL = 'mattias@jwd.se'
