.PHONY: all clean test

DB_HOST?=postgres
DB_NAME?=phoenix

.PHONY: init
init:
	docker-compose up -d postgres
	@# update app config to point at docker postgres DB
	@sed -i '' -e 's/demo_dev/$(DB_NAME)/g' config/dev.exs
	@sed -i '' -e 's/localhost/$(DB_HOST)/g' config/dev.exs
	@# create ecto DB layer
	docker-compose run --rm phoenix mix ecto.create
	@# build the phoenix app image

.PHONY: migrate
migrate:
	docker-compose run --rm phoenix mix ecto.migrate

.PHONY: run
run: migrate
	docker-compose up phoenix
