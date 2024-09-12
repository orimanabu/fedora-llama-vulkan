IMAGE = fedora-llama-vulkan
build:
	podman build . -t $(IMAGE)
run:
	podman run --name $(IMAGE) --rm -ti --device /dev/dri -v ~/Downloads:/models:Z localhost/$(IMAGE) do.sh
