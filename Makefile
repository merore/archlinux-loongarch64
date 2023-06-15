IMAGE:=merore/archlinux-loongarch64

all: image

image:
	docker build \
		--build-arg https_proxy=${https_proxy} \
		--build-arg http_proxy=${http_proxy}  \
		-t ${IMAGE} .

push:
	docker push ${IMAGE}

run:
	docker run -it --rm ${IMAGE}
