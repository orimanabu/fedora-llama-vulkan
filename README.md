# はじめに

Apple SiliconのmacOS上で、llama.cppが入ったコンテナをPodmanで動かして、GPUを使っていることを確認します。

# 使い方

## コンテナイメージのビルド

```sh
make build
```

## コンテナの実行

```
make run
```

# 参考文献
- [Enabling containers to access the GPU on macOS](https://sinrega.org/2024-03-06-enabling-containers-gpu-macos/)
- [Podman and Libkrun](https://blog.podman.io/2024/07/podman-and-libkrun/)
- https://x.com/slpnix/status/1813482806040756598
