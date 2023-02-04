.PHONY: all  down re  clean fclean

name = inception

all: 
	@bash srcs/requirements/wordpress/tools/make_dir.sh
	docker-compose -f ./srcs/docker-compose.yml  --env-file srcs/.env up -d --build

down:
	@bash srcs/requirements/wordpress/tools/make_dir.sh
	@docker-compose -f ./srcs/docker-compose.yml --env-file srcs/.env  down

re: down
	docker-compose -f ./srcs/docker-compose.yml --env-file srcs/.env up -d --build

clean: 
	docker stop $$(docker ps -qa)\
	docker rm $$(docker ps -qa)\
	docker rmi -f $$(docker images -qa)\
	docker volume rm $$(docker volume ls -q)
# docker network rm $(docker network ls -q);

fclean:
	docker stop $$(docker ps -qa)
	docker system prune --all --force --volumes
	docker network prune --force
	docker volume prune --force
	docker volume rm $$(docker volume ls -q)
	sudo rm -rf ~/data/wordpress/*
	sudo rm -rf ~/data/mariadb/*

network:
	docker network create inception
