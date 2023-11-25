FROM tourdeapp/php-8.1

WORKDIR /app

COPY composer*.json ./

RUN composer install

EXPOSE 80

COPY . .

ENTRYPOINT php -S 0.0.0.0:80 -t public
