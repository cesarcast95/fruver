#!/bin/bash

echo "Composer Install"
composer install

echo "Applying Migrations"
php artisan migrate

echo "Starting Server Fruver Backend"
php artisan serve --host 0.0.0.0:8081