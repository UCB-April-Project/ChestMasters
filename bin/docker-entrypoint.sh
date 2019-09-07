#!/usr/bin/env bash

echo -n run migration if needed...
bundle install
bundle exec rake db:setup

exec "$@"
