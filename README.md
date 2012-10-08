tests-watch
===========

Auto running tests for nodejs/coffee project in Ubuntu

#!/usr/sh

PROJECT="project_name"
TEST_FOLDER='tests/'
REPORTER='--reporter eclipse'
TIME='-t 100'

while true ; do
  inotifywait *.coffee tests/*.coffee \
  && ( notify-send $PROJECT "`nodeunit ${REPORTER} ${TEST_FOLDER} ${TIME}`" )
done