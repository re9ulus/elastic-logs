IMAGE_NAME=elastic_tmp

build_and_run:
	docker build -t ${IMAGE_NAME} . && docker run --rm -it ${IMAGE_NAME}
