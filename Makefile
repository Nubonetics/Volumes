VERSION=$(shell cat VERSION)
DOCKER_IMAGE_NAME=nubonetics/volumes:${VERSION}

build:
	docker build --build-arg VERSION=${VERSION} -t ${DOCKER_IMAGE_NAME} .

push:
	docker push ${DOCKER_IMAGE_NAME}
