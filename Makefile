up:
	@docker-compose build
	@docker-compose up -d 

down:
	@docker-compose down
	@docker image rmi solid/ruby

sh:
	@docker container exec -it solid sh