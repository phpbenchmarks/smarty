#!/usr/bin/env bash

function clearCache() {
    sudo /bin/rm -rf var/compiled/*
    sudo /bin/chmod -R 777 var/compiled

    sudo /bin/rm -rf var/cache/*
    sudo /bin/chmod -R 777 var/cache
}

function init() {
    clearCache
    composer install --no-dev --classmap-authoritative
    clearCache

    return 0;
}
