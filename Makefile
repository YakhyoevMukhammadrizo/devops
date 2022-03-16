STACK=oxo
DB_STACK=oxo_db
prod-up-swarm:
	set -a &&. ./.env && set +a && docker stack deploy --with-registry-auth -c docker-compose.yml ${STACK}

test-up-swarm:
	set -a &&. ./.env && set +a && docker stack deploy --with-registry-auth -c docker-compose.yml ${STACK}

services:
	docker stack services ${STACK}

db-services: 
	docker stack services ${DB_STACK}

remove-stack:
	docker stack rm ${STACK}

remove-db-stack:
	docker stack rm ${DB_STACK}

login-ecr:
	aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 283154155569.dkr.ecr.ap-south-1.amazonaws.com

