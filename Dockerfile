FROM nvidia/cuda:9.1-devel

COPY ./bin/ethminer /usr/bin/

CMD /usr/bin/ethminer -U -P stratum+tcp://${WALLET}.${WORKER}@${NANOPOOL_SERVER}/${EMAIL} --api-port ${API_PORT:-0}
