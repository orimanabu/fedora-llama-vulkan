#!/bin/bash

# Place `Llama-3-ELYZA-JP-8B-q4_k_m.gguf` in $HOME/Downloads beforehand.
/usr/local/bin/main --temp 0 -m models/Llama-3-ELYZA-JP-8B-q4_k_m.gguf -b 512 -ngl 99 -p "Podmanのlibkrun providerについて教えて下さい"
