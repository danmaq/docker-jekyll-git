NAME=danmaq/jekyll-git-redcarpet
VERSION=latest

build:
	docker build -t $(NAME):$(VERSION) .

restart:
	stop start

contener=`docker ps -a -q`
image=`docker images | awk '/^/ { print $$3 }'`

clean:
	@if [ "$(image)" != "" ] ; then \
		docker rmi $(image); \
	fi
	@if [ "$(contener)" != "" ] ; then \
		docker rm $(contener); \
	fi

stop:
	docker rm -f $(NAME)

sh:
	docker exec -it $(NAME) /bin/ash

logs:
	docker logs $(NAME)

