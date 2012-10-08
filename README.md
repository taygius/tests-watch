tests-watch
===========

Auto running tests for nodejs/coffee project in Ubuntu
   and notificating to notify-osd

## Dependences:

1)
Working on ubuntu over 11.04

2)
Setup 'inotify-tools' for watching file changes
`` bash
sudo apt-get install inotify-tools
``

3)
Setup patched notify-osd: 
`` bash
sudo add-apt-repository ppa:leolik/leolik
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install libnotify-bin
echo 'bubble-expire-timeout = 1sec' >> ~/.notify-osd
``

## How to run
copy test-watch.sh to project directory
run sh ./test-watch.sh in console
After every file changes in directory will run test and result will send to notify-ost

## Options
Also you can edit follow options in 'test-watcher.sh':
PROJECT - current project name
TEST_FOLDER - folder with tests 
REPORTER - see reporter option for nodeunit
TIME - time of showing message

## License

The MIT License

Copyright (c) 2012 taygius

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.