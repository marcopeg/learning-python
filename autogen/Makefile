CURRENT_DIR := $(shell pwd)

build:
	docker build -f .devcontainer/Dockerfile -t autogen_base_img https://github.com/microsoft/autogen.git#main

run:
	docker run -it -v $(CURRENT_DIR)/.:/home/autogen/autogen autogen_base_img:latest python /home/autogen/autogen/${f}
