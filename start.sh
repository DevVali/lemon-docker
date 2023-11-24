#!/bin/sh

cd /app && composer install
php -S 0.0.0.0:80 -t public
