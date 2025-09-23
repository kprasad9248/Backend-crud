#!/bin/bash
set -o errexit

# Install gems
bundle install

# Run pending migrations
bin/rails db:migrate

# Seed database
bin/rails db:seed
