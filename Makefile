VERSION=$(shell cat VERSION)
DOCKER_IMAGE_NAME=nubonetics/volumes:airsim-binary-blocks-${VERSION}

download:
	mkdir -p .assets
	wget https://github.com/microsoft/AirSim/releases/download/v1.8.1/Blocks.zip -O .assets/Blocks.zip
	unzip .assets/Blocks.zip -d .assets

build:
	docker build --build-arg VERSION=${VERSION} -t ${DOCKER_IMAGE_NAME} .

push:
	docker push ${DOCKER_IMAGE_NAME}
