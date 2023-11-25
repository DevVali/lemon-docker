FROM node:lts-alpine AS node

WORKDIR /app-node

COPY . .

RUN yarn
RUN yarn run mix

FROM tourdeapp/php-8.1

WORKDIR /app

COPY --from=node /app-node .

RUN composer install

ENTRYPOINT php -S 0.0.0.0:80 -t public

EXPOSE 80
