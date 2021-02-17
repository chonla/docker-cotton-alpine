VERSION = 0.4.0
.PHONY: build push deliver
build:
	docker build -t chonla/cotton:$(VERSION) .
	docker tag chonla/cotton:$(VERSION) chonla/cotton:alpine
	docker tag chonla/cotton:$(VERSION) chonla/cotton:latest
push:
	docker push chonla/cotton:$(VERSION)
	docker push chonla/cotton:alpine
	docker push chonla/cotton:latest
deliver: build push