# timelog
A django app that logs work time.

## Development
1. Build the dev image:    

```bash
make build
```

2. Start the dev shell:    

```bash
make shell
```

3. Publish image:    

```bash
make publish
```

4. Run server:    

```bash
make server
```

## Deployment
1. make sure file `/var/timelog/timelog.db` exists.
2. download the `docker-compose.yaml` from this repo.
3. use `docker-compose up -d` to start the timelog service.
4. exec into service using `docker-compose exec timelog sh`, and run `python manage.py migrate` to setup the tables, then run `python manage.py createsuperuser` to create admin.
5. down.
