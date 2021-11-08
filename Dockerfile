FROM nginx:1.21

COPY 40-generate-cert.sh /docker-entrypoint.d/
COPY 41-get-404-page.sh /docker-entrypoint.d/
COPY nginx.conf /etc/nginx/

RUN mkdir -p /var/www/nginx/errors

ENV NGINX_ENTRYPOINT_QUIET_LOGS=1
