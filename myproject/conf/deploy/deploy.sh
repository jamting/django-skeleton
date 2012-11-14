#!/bin/bash
set -e

echo "Copying Nginx-settings: /home/adminuser/projects/myproject/conf/deploy/nginx.conf --> /etc/nginx/sites-enabled/myproject"
sudo cp /home/adminuser/projects/myproject/conf/deploy/nginx.conf /etc/nginx/sites-enabled/myproject

echo "Copying Upstart-settings: /home/adminuser/projects/myproject/conf/deploy/upstart.conf --> /etc/init/myproject.conf"
sudo cp /home/adminuser/projects/myproject/conf/deploy/upstart.conf /etc/init/myproject.conf

echo "Enabling autostart: sudo ln -s /lib/init/upstart-job /etc/init.d/myproject"
sudo rm -f /etc/init.d/myproject
sudo ln -s /lib/init/upstart-job /etc/init.d/myproject

echo "Restarting Gunicorn: sudo service myproject restart"
sudo service myproject restart

echo "Restarting Nginx: sudo /etc/init.d/nginx restart"
sudo /etc/init.d/nginx restart
