#!/usr/bin/env bash

rake db:migrate
bundle exec puma -C config/puma.rb