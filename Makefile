.PHONY: setup
setup:
	docker-compose build

.PHONY: build
build:
	docker-compose build lbh-arrears-functions

.PHONY: serve
serve:
	docker-compose build lbh-arrears-functions && docker-compose up lbh-arrears-functions

.PHONY: shell
shell:
	docker-compose run lbh-arrears-functions bash

.PHONY: test
test:
	docker-compose up test-database & docker-compose build lbh-arrears-functions-test && docker-compose up lbh-arrears-functions-test

.PHONY: lint
lint:
	-dotnet tool install -g dotnet-format
	dotnet tool update -g dotnet-format
	dotnet format

.PHONY: restart-db
restart-db:
	docker stop $$(docker ps -q --filter ancestor=test-database -a)
	-docker rm $$(docker ps -q --filter ancestor=test-database -a)
	docker rmi test-database
	docker-compose up -d test-database
