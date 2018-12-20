#!/bin/bash
PATH=$PATH:~/Library/Python/2.7/bin
if [ "$(which pip)" = "" ]; then
    curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
    python get-pip.py --user
fi
if [ ! -f .venv ]; then
    pip install --user virtualenv
    virtualenv -p `which python2.7` .venv
fi
source .venv/bin/activate
pip install -r requirements.txt
jupyter notebook
