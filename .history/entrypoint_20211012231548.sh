#!/bin/bash

npm install

if [ ! -f ".env" ]; then
  cp .env.example .env
fi

composer install
php artisan key:generate
php artisan migrate

tail -f /dev/null