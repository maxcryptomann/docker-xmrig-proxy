# XMRig Proxy Docker Image

Docker image for [xmrig-proxy](https://github.com/xmrig/xmrig-proxy), a high-performance Monero (XMR) Stratum proxy.

## Usage

```sh
docker run -d \
  -e POOL='pool.supportxmr.com:5555' \
  -e WALLET='your-wallet-address' \
  -e PASSWORD='x' \
  -p 3333:3333 \
  -p 3334:3334 \
  --name xmrig-proxy \
  ghcr.io/maxcryptomann/docker-xmrig-proxy:latest
```

## Environment Variables

| Name | Default | Description |
| ---- | ------- | ----------- |
| WALLET | NaN | Wallet address or username for the mining pool |
| POOL | pool.supportxmr.com:5555 | Mining pool URL |
| PASSWORD | x | Password for the mining pool |
| PORT | 3333 | Proxy listen port for miners |
| HTTP_PORT | 3334 | HTTP API port |
| DONATE_LEVEL | 0 | Donation level (applies only with 256+ miners) |
| RETRY_SWITCH_POOL | 2 | Number of retries before switching to backup server |
| RETRY_TIMEOUT_SECONDS | 1 | Pause between retries in seconds |
