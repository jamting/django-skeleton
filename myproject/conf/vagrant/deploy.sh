#!/bin/bash
set -e

echo "Copying Nginx-settings: /vagrant/myproject/conf/vagrant/nginx.conf --> /etc/nginx/sites-enabled/myproject"
sudo rm -f /etc/nginx/sites-enabled/myproject
sudo rm -f /etc/nginx/sites-available/myproject
sudo cp /vagrant/myproject/conf/vagrant/nginx.conf /etc/nginx/sites-available/myproject
sudo ln -s /etc/nginx/sites-available/myproject /etc/nginx/sites-enabled/myproject

echo "Copying Upstart-settings: /vagrant/myproject/conf/vagrant/upstart.conf --> /etc/init/myproject.conf"
sudo rm -f /etc/init/myproject.conf
sudo cp /vagrant/myproject/conf/vagrant/upstart.conf /etc/init/myproject.conf

echo "Enabling autostart: sudo ln -s /lib/init/upstart-job /etc/init.d/myproject"
sudo rm -f /etc/init.d/myproject
sudo ln -s /lib/init/upstart-job /etc/init.d/myproject

echo "Restarting Gunicorn: sudo service myproject restart"
sudo service myproject restart

echo "Restarting Nginx: sudo /etc/init.d/nginx restart"
sudo /etc/init.d/nginx restart