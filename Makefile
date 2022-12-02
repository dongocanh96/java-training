setuppostgres:
    docker run --name postgres15 -p 5432:5432 -e POSTGRES_USER=root -e POSTGRES_PASSWORD=secret -d postgres:15.1-alpine3.17

createdb:
	docker exec -it postgres15 createdb --username=root --owner=root tutorials

dropdb:
	docker exec -it postgres15 dropdb tutorials
