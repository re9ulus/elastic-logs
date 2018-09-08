#!/bin/bash
IMAGE_NAME=elastic_tmp
docker build -t ${IMAGE_NAME} . && docker run --rm -it ${IMAGE_NAME}
