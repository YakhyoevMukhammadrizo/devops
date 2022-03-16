SERVICE=$1
docker service logs oxo_$SERVICE -f --tail 100
