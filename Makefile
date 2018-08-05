.PHONY: build release clean

ETHMINER_VERSION := 0.14.0
ETHMINER_RELEASE_FILE := ethminer-${ETHMINER_VERSION}-Linux.tar.gz
ETHMINER_RELEASE_URL := https://github.com/ethereum-mining/ethminer/releases/download/v${ETHMINER_VERSION}/${ETHMINER_RELEASE_FILE}

DOCKERHUB_ID := hichtakk
IMAGE_NAME := ethminer-cuda
IMAGE_TAG := ${ETHMINER_VERSION}
IMAGE_REPOSITORY := ${DOCKERHUB_ID}/${IMAGE_NAME}:${IMAGE_TAG}

bin/ethminer:
	@curl -kL -o ethminer.tar.gz ${ETHMINER_RELEASE_URL}
	@tar zxvf ethminer.tar.gz

build: bin/ethminer
	@docker build -t ${IMAGE_REPOSITORY} .

release: build
	@docker login
	@docker push ${IMAGE_REPOSITORY}

clean:
	@rm -rf ./bin
	@rm -rf ./ethminer*.tar.gz
	@for i in `docker images | grep ${IMAGE_NAME} | awk '{ print $$1 ":" $$2}'`; do docker rmi $$i ; done

