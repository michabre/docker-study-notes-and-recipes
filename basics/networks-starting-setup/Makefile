build:
	docker build -t favorites-node .

run: 
	docker run --name favorites -d --rm -p 3000:3000 favorites-node

noderun: 
	docker run --name favorites --network favourites-net -d --rm -p 3000:3000 favorites-node

mongo:
	docker run -d --name mongodb mongo

inspectdb:
	docker container inspect mongodb

mongonet:
	docker run -d --name mongodb --network favourites-net mongo

network:
	docker network create favourites-net