APP_NAME?=hello

.PHONY: create
create:
	docker build -f Dockerfile-phx -t mafrosis/phoenix:1.4.2 .
	docker run --rm -v $$(pwd):/build -w /build mafrosis/phoenix:1.4.2 mix phx.new $(APP_NAME)
