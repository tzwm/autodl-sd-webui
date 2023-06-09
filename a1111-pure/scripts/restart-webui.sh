#! /bin/bash

mkdir -p /root/autodl-tmp/webui_outputs
mkdir -p /root/autodl-tmp/dreambooth

echo "重启中，需要等待几秒……"


pgrep -f 'launch.py' | head -n 1 | xargs kill

cd /root/stable-diffusion-webui/ && ./webui.sh -f --port 6006 --enable-insecure-extension-access --api --xformers --opt-sdp-attention --no-half-vae --ckpt-dir /root/autodl-tmp/models/ckpt --embeddings-dir /root/autodl-tmp/models/embeddings --lora-dir /root/autodl-tmp/models/lora --vae-dir /root/autodl-tmp/models/vae --controlnet-dir /root/autodl-tmp/models/controlnet --lyco-dir /root/autodl-tmp/models/lycoris --skip-torch-cuda-test --skip-version-check --skip-python-version-check
