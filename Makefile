# Makefile
.PHONY: check_docker build run

check_docker:
	@which docker > /dev/null || (curl -fsSL https://get.docker.com -o get-docker.sh && sudo sh get-docker.sh)

build: check_docker
	docker build -t your-image-name .

run: build
	docker run -p 8080:80 -d your-image-name
