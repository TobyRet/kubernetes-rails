# README

### Run Docker Compose

The docker compose configuration spins up Postgres and the Rails application.
Migrations are run only when the postgres container is ready (see
docker-entry.sh)

```
$ docker-compose build
$ docker-compose run
```

