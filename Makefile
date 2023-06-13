.PHONY: check_docker build run stop deploy all

check_docker:
	@which docker > /dev/null || (curl -fsSL https://get.docker.com -o get-docker.sh && sudo sh get-docker.sh)

build: check_docker
	docker build -t myrstudio .

run: build
	docker run -p 8787:8787 -d myrstudio

stop:
	docker stop $$(docker ps -aqf "name=myrstudio")

all:
	make build
	make run

