FROM serversideup/php:8.2-fpm-nginx as base
# FROM serversideup/php:8.2.12-fpm-nginx-bookworm as base

FROM base as production

ENV JWT_SECRET=lTpKKCXSAHRGtOFXg6jSJalXg9vndb00lp2Jz6QW5yTrKaRbuqOSl7p7CSZylNrw

COPY --chown=9999:9999 . /var/www/html/

COPY ./.env /var/www/html/.env

# RUN apt-get update && apt-get install -y \
#     build-essential && \
#     postgresql-dev

# RUN su webuser && \
#     composer install --no-cache --no-dev --no-scripts --no-autoloader --ansi --no-interaction && \
#     composer require laravel/telescope --dev && \
#     composer dump-autoload -o

#     # artisan commands
# RUN php ./artisan horizon:install && \
#     # php ./artisan telescope:install && \
#     php ./artisan key:generate && \
#     php ./artisan config:cache && \
#     php ./artisan event:cache && \
#     # php ./artisan route:clear && \
#     # php ./artisan route:cache && \
#     php ./artisan view:clear && \
#     php ./artisan view:cache && \
#     php ./artisan horizon:publish
