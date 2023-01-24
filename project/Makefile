.PHONY: all re down clean

all:
	docker compose scrs/docker-compose.yml up -d 

down:
	docker compose scrs/docker-compose.yml down

re:
	docker compose scrs/docker-compose.yml up -d --build

clean:
	docker stop $(docker ps -qa);\
	docker rm $(docker ps -qa);\
	docker rmi -f $(docker images -qa);
	docker volume rm $(docker volume ls -q);
	docker network rm $(docker network ls -q);


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