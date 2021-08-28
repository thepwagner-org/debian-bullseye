include ../docker.mk

pull:
	docker pull $(shell grep ^FROM Dockerfile | cut -d' ' -f2)

build:
	docker build -t debian-bullseye --build-arg "CIBUILD=$(CIBUILD)" .
