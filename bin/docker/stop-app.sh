#!/usr/bin/env bash

docker-compose exec app rake db:dump_tables_data
docker-compose down