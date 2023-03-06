default:
	echo "This is a containerized Amazon linux server with React SPA"

build:
	docker build -t proj1-frontend . 

run:
	docker run -d -p 3000:80 --name warren-raylan proj1-frontend

stop:
	docker stop warren-raylan
	
remove:
	docker rm warren-raylan