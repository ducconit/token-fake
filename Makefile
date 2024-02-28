.PHONY: up
up:
	docker compose up -d ganache truffle

.PHONY: down
down:
	docker compose down