#!/bin/bash

npm install

if [ ! -f ".env" ]; then
  cp .env.example .env
fi
if [ ! -f ".env.testing" ]; then
  cp .env.testing.example .env.testing
fi

composer install
php artisan key:generate
php artisan migrate

tail -f /dev/null