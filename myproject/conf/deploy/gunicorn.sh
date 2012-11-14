#!/bin/bash
set -e

# Set up workers
NUM_WORKERS=3

# User and group to run as
USER=adminuser
GROUP=adminuser
ADDRESS=127.0.0.1:7000

# Set up logging
LOGFILE="/home/adminuser/projects/myproject/logs/gunicorn.log"
LOGDIR=$(dirname $LOGFILE)
test -d $LOGDIR || mkdir -p $LOGDIR

# Activate virtual environment and move to project folder
source /home/adminuser/.virtualenvs/myproject/bin/activate
cd /home/adminuser/projects/myproject/

# Run Gunicorn
exec gunicorn_django -w $NUM_WORKERS --bind=$ADDRESS \
  --user=$USER --group=$GROUP --log-level=debug \
  --log-file=$LOGFILE 2>>$LOGFILE