#!/bin/bash

# sync 
# SOURCE
# DESTINATION

SOURCE=/Users/benjaminfehrensen/Documents/BEFE/projects/webapps/Website-challenge/_site/
DEST_DIR=/home/www-data/swiss-hacking-challenge.ch/
DEST_DIR2=/home/www-data/swiss-hacking-challenge.com/
DEST_SERVER=scs01.nine.ch
DEST_USER=www-data

rsync -arv --delete-after $SOURCE $DEST_USER@$DEST_SERVER:$DEST_DIR
rsync -arv --delete-after $SOURCE $DEST_USER@$DEST_SERVER:$DEST_DIR2
