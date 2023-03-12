build:
	docker build -t proj1-backend .

run: 
	docker run --name goals-backed --network proj1-net -d --rm -p 3001:80 proj1-backend

mongodb:
	docker run -d --name mongodb --network proj1-net mongo

network:
	docker network create proj1-net