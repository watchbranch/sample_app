#!/usr/bin/env bash
# exit on error
set -o errexit
bundle lock --add-platform x86_64-linux
bundle install
bundle exec rails assets:precompile
bundle exec rails assets:clean
bundle exec rails db:migrate