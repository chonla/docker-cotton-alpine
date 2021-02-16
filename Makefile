.PHONY: build
build:
	docker build -t chonla/cotton:0.4.0 .
	docker tag chonla/cotton:0.4.0 chonla/cotton:alpine
	docker tag chonla/cotton:0.4.0 chonla/cotton:latest