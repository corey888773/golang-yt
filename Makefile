gorun:
	go build && ./golang-yt

postgres:
	docker run --name postgres-yt -p 5432:5432 -e POSTGRES_USER=root -e POSTGRES_PASSWORD=secret -d postgres:15.4-alpine

createdb:
	docker exec -it postgres-yt createdb --username=root --owner=root golang-yt

.PHONY: 
	gorun postgres createdb