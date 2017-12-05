# timelog
A django app that logs work time.

## Development
1. Build the dev image:    

```bash
docker build -t youyongsong/timelog:dev .
```

2. Start the dev shell:    

```bash
docker run -ti --entrypoint sh -v `pwd`:/app -p 8080:8080 youyongsong/timelog:dev
```
