# media-server-compose
My personal media server compose files:
- [Nginx Proxy Manager](https://nginxproxymanager.com/);
- [Jellyfin](https://jellyfin.org/);
- [Vaultwarden](https://github.com/dani-garcia/vaultwarden);
- [Immich](https://immich.app/);
- [Seafile](seafile.com);
- [Portainer](https://www.portainer.io/);
- [qBittorrent](https://www.qbittorrent.org/);

## Environment Variables

To change environment variables, you must recreate the containers. Just restarting the containers does not replace the environment within the container!

In order to recreate the container using docker compose, run `docker compose up -d`. In most cases docker will recognize that the .env file has changed and recreate the affected containers. If this does not work, try running `docker compose up -d --force-recreate`.


```sh
DOCKER_SOCK=/var/run/docker.sock
TZ=Etc/UTC # https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List
```
