default:
	echo "This is a containerized Amazon linux server with NodeJS"

build:
	docker build -t aws-node-app . 

run:
	docker run -d -p 3000:80 --name green-delorean aws-node-app

cli:
	docker exec -it green-delorean sh

stop:
	docker stop green-delorean
	
remove:
	docker rm green-delorean