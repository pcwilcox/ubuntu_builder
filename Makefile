default: all

all: build push

push:
	docker push petewilcox/ubuntu_builder:latest

build:
	docker build --rm --tag petewilcox/ubuntu_builder:latest .

.PHONY: all build push default
