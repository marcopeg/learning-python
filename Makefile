boot: build start logs

start:
	docker run --rm -d --name jupyter-notebook \
		-p 8888:8888 \
		-v "$$(pwd)":/usr/src/app \
		-w /usr/src/app \
		jupyter-notebook

stop:
	@docker ps -q --filter name=jupyter-notebook | xargs -r docker stop
	@docker ps -a -q --filter name=jupyter-notebook | xargs -r docker rm

logs:
	@docker logs -f jupyter-notebook

build: 
	docker build -t jupyter-notebook .devcontainer/
