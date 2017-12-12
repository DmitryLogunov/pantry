#!/usr/bin/env bash

rake db:migrate
rake db:upload_init_data

bundle exec puma -C config/puma.rb