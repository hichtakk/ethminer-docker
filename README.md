# ethminer-docker

```
sudo docker run --runtime=nvidia -d -e WALLET=${YOUR_ETH_WALLET_ADDRESS} -e WORKER=${WORKER_NAME} -e NANOPOOL_SERVER=${NANOPOOL_SERVER} -e EMAIL=${YOUR_NANOPOOL_EMAIL} --name ethminer hichtakk/ethminer-cuda:0.14.0
```
