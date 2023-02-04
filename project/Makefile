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

<<<<<<< HEAD
clean: 
	docker stop $$(docker ps -qa)\
	docker rm $$(docker ps -qa)\
	docker rmi -f $$(docker images -qa)\
	docker volume rm $$(docker volume ls -q)
# docker network rm $(docker network ls -q);
=======
clean: down
	@docker system prune -a
	@sudo rm -rf ~/data/wordpress/*
	@sudo rm -rf ~/data/mariadb/*
>>>>>>> f07fc9f5ef116034a6f9fb2755a17decb652521c

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

# .PHONY: all re down clean

# all:
# 	docker compose -f ./scrs/docker-compose.yml up -d --build //-f имя докерфайла

# down:
# 	docker compose -f ./scrs/docker-compose.yml down

# re:
# 	docker compose -f scrs/docker-compose.yml up -d --build

# clean:
# 	docker stop $(docker ps -qa);\
# 	docker rm $(docker ps -qa);\
# 	docker rmi -f $(docker images -qa);\
# 	docker volume rm $(docker volume ls -q);\
# 	docker network rm $(docker network ls -q);