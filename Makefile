.PHONY: build shell publish server

build:
	docker build -t youyongsong/timelog:dev .

shell:
	docker run --rm -ti --entrypoint sh -v `pwd`:/app -p 8080:8080 youyongsong/timelog:dev

publish:
	docker push youyongsong/timelog:dev

server:
	docker run -dt --rm -p 10001:8080 youyongsong/timelog:dev
