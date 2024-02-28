.PHONY: up
up:
	docker compose up ganache

.PHONY: down
down:
	docker compose down

daemon:
	docker compose up ganache -d

build:
	docker compose build

cleanup:
	docker system prune --volumes

truffle:
	docker compose run --rm truffle bash

geth:
	docker compose run --rm geth bash
