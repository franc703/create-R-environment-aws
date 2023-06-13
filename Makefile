.PHONY: check_docker build run stop deploy all

check_docker:
	@which docker > /dev/null || (curl -fsSL https://get.docker.com -o get-docker.sh && sudo sh get-docker.sh)

build: check_docker
	docker build -t myrstudio .

run: build
	docker run -p 8787:8787 -d myrstudio

stop:
	docker stop $$(docker ps -aqf "name=myrstudio")

deploy:
	aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 231050005521.dkr.ecr.us-east-2.amazonaws.com
	docker build -t r-studio .
	docker tag r-studio:latest 231050005521.dkr.ecr.us-east-2.amazonaws.com/r-studio:latest
	docker push 231050005521.dkr.ecr.us-east-2.amazonaws.com/r-studio:latest

all:
	make build
	make run
	make deploy


