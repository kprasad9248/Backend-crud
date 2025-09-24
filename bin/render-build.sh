#!/bin/bash
set -o errexit  # Exit immediately if a command exits with a non-zero status

# Install gems
bundle install

# Precompile Rails assets
bundle exec rails assets:precompile
bundle exec rails assets:clean

# Seed the database
bundle exec rails db:seed
