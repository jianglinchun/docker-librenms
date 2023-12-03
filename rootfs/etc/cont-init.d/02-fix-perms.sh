#!/usr/bin/with-contenv sh
# shellcheck shell=sh
set -e

echo "Fixing perms..."
mkdir -p /data \
  /var/run/nginx \
  /var/run/php-fpm
chown librenms:librenms \
  /data \
  "${LIBRENMS_PATH}"
if [ -f "${LIBRENMS_PATH}/.env" ]; then
  chown librenms:librenms "${LIBRENMS_PATH}/.env"
fi
chown -R librenms:librenms \
  /home/librenms \
  /tpls \
  /var/lib/nginx \
  /var/log/nginx \
  /var/log/php81 \
  /var/run/nginx \
  /var/run/php-fpm
