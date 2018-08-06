# ethminer-docker

[![Package repository](https://img.shields.io/badge/packages-repository-b956e8.svg?style=flat-square)](https://hub.docker.com/r/hichtakk/ethminer-cuda/)

Ethereum mining container with NVIDIA GPUs.


# Usage

Before runing the container, please make sure that you already have installed docker and nvidia-docker to your host system.  
Docker container requires environmental variables bellow for specifing your mining pool and wallet information.

* WALLET
* WORKER
* NANOPOOL_SERVER
* EMAIL

```
# docker run --runtime=nvidia -d -e WALLET=${YOUR_ETH_WALLET_ADDRESS} -e WORKER=${WORKER_NAME} -e NANOPOOL_SERVER=${NANOPOOL_SERVER} -e EMAIL=${YOUR_NANOPOOL_EMAIL} --name ethminer hichtakk/ethminer-cuda:0.14.0
```

# References

