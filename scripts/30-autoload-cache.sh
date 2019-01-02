#!/usr/bin/env bash

APP_ENV=${APP_ENV:-production}

# Skip for non production environments
if [[ "$APP_ENV" != "production" ]]; then
	exit
fi

# Cache routes controllers
php console route:cache

# Dump composer autoload
composer dumpautoload
