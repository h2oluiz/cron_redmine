#!/bin/bash

cd /home/redmine/redmine-3.1.1/ && bundle exec rails runner -e production /home/redmine/agenda_redmine/comandos.rb

touch rodou.log
