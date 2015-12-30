#!/bin/bash
rm -rf /vagrant/venv
virtualenv -p /usr/bin/python3 venv
source /vagrant/venv/bin/activate
pip install -U pip
pip install -r /vagrant/requirements.txt
