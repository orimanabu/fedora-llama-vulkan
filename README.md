# What's this

Container image to play with Podman-libkrun on Apple Silicon macOS

# How to use

## Build llama.cpp container image

```sh
make build
```

or

```sh
podman build . -t fedora-llama-vulkan
```

## Run llama.cpp container

Please download a model file you like (for example `Llama-3-ELYZA-JP-8B-q4_k_m.gguf`) and place it in $HOME/Downloads beforehand.

```sh
make run
```

or

```sh
podman run --rm -ti --device /dev/dri -v ~/Downloads:/models:Z localhost/fedora-llama-vulkan main --temp 0 -m models/Llama-3-ELYZA-JP-8B-q4_k_m.gguf -b 512 -ngl 99 -p "Podmanのlibkrun providerについて教えて下さい"
```

# 参考文献
- [Enabling containers to access the GPU on macOS](https://sinrega.org/2024-03-06-enabling-containers-gpu-macos/)
- [Podman and Libkrun](https://blog.podman.io/2024/07/podman-and-libkrun/)
- https://x.com/slpnix/status/1813482806040756598
