#!/bin/bash
set -e

# Set up workers
NUM_WORKERS=3

# User and group to run as
USER=vagrant
GROUP=vagrant
ADDRESS=127.0.0.1:7000

# Set up logging
LOGFILE="/vagrant/myproject/logs/gunicorn.log"
LOGDIR=$(dirname $LOGFILE)
test -d $LOGDIR || mkdir -p $LOGDIR

# Activate virtual environment and move to project folder
source /home/vagrant/.virtualenvs/myproject/bin/activate
cd /vagrant/myproject/

# Run Gunicorn
exec gunicorn_django -w $NUM_WORKERS --bind=$ADDRESS \
  --user=$USER --group=$GROUP --log-level=debug \
  --log-file=$LOGFILE 2>>$LOGFILE