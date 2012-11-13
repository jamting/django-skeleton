django-skeleton
===============

**NOTE**: This is a fork by jamting in which intend to adjust this excellent project to fit my needs better.  

/jamting

Original documentations follows:

An easy-to-use standard project structure for a fresh Django project. Includes Twitter Bootstrap http://twitter.github.com/bootstrap/

===
After cloning the repo,

    git clone https://github.com/mschettler/django-skeleton.git

Run the setup to name your project,
    
    python setup.py

View your work, navigate to localhost:8000

    python manage.py runserver
    
Done!



#####One line setup:

	git clone https://github.com/jamting/django-skeleton.git && cd django-skeleton && python setup.py


#Screenshot
![Example](https://raw.github.com/mschettler/django-skeleton/master/screenshot.png)
#Video Demo
www.youtube.com/watch?v=4GLiMWXo0ws


#Versions Used
    Django 1.4.2
    Twitter Bootstrap 2.2.1


#Django Skeleton Project

    ├── myproject
        ├── README.md
        ├── manage.py
        ├── myfirstapp
        │   ├── __init__.py
        │   ├── models.py
        │   ├── templates
        │   │   └── home.html
        │   ├── tests.py
        │   └── views.py
        ├── myproject
        │   ├── __init__.py
        │   ├── settings.py
        │   ├── urls.py
        │   └── wsgi.py
        └── src
            ├── css
            │   ├── bootstrap-responsive.css
            │   ├── bootstrap-responsive.min.css
            │   ├── bootstrap.css
            │   └── bootstrap.min.css
            ├── ico
            ├── img
            │   ├── glyphicons-halflings-white.png
            │   └── glyphicons-halflings.png
            └── js
                ├── bootstrap.js
                └── bootstrap.min.js
    
    9 directories, 34 files
    
    
    
#Twitter Bootstrap
http://twitter.github.com/bootstrap/

#Django
https://www.djangoproject.com/
