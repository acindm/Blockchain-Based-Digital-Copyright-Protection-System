#!/bin/bash

pip install virtualenv
virtualenv env
cd env
source bin/activate
pip install -r ../requirements.txt

file=tlsh.zip
if [ ! -f $file ]; then
    wget wget https://github.com/trendmicro/tlsh/archive/master.zip -O tlsh.zip
fi

unzip tlsh.zip
cd tlsh-master/py_ext
python setup.py install
cd ../../..
