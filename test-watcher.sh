#!/usr/sh

PROJECT="project_name"
TEST_FOLDER='tests/'
REPORTER='--reporter tap'
TIME='-t 50'

while true ; do
  inotifywait * tests/* \
  && ( notify-send $PROJECT "`nodeunit ${REPORTER} ${TEST_FOLDER} ${TIME}`" )
done