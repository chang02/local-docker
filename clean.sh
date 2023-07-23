docker-compose down -v

containers=$(docker ps -a | grep dive_ | awk '{print $1}')
if [[ $containers != "" ]]; then
    docker rm -f "$containers"
    docker volume ls -qf dangling=true | xargs docker volume rm
fi

docker-compose rm -f