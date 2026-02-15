# Seafile

https://www.seafile.com/en/home/

```sh
SEAFILE_VERSION=11.0-latest
SEAFILE_HTTP_PORT=80
SEAFILE_HTTPS_PORT=443
SEAFILE_DATA_LOCATION=/opt/seafile-data # Required, specifies the path to Seafile data persistent store.
SEAFILE_ADMIN_EMAIL=me@example.com # Specifies Seafile admin user, default is 'me@example.com'.
SEAFILE_ADMIN_PASSWORD=asecret  # Specifies Seafile admin password, default is 'asecret'.
SEAFILE_SERVER_LETSENCRYPT_ENABLED=false # Whether to use https or not.
SEAFILE_SERVER_HOSTNAME=docs.seafile.com # Specifies your host name if https is enabled.
SEAFILE_MYSQL_VERSION=10.11
SEAFILE_MYSQL_ROOT_PASSWORD=db_dev # Required, the value should be root's password of MySQL service.
SEAFILE_MYSQL_DATA_LOCATION=/opt/seafile-mysql/db # Required, specifies the path to MySQL data persistent store.
SEAFILE_MYSQL_LOG_CONSOLE=true
SEAFILE_MYSQL_AUTO_UPGRADE=1 # Set to a non-empty value to have the entrypoint check whether mariadb-upgrade needs to run, and if so, run the upgrade before starting the MariaDB server.
SEAFILE_MEMCACHED_VERSION=1.6.18
```