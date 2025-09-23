#!/bin/bash
set -o errexit

# Install gems
bundle install

# Run pending migrations
rails db:migrate

# Seed database
rails db:seed
