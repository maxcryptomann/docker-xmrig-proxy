#!/bin/bash

VERSION=$(curl -s https://api.github.com/repos/xmrig/xmrig-proxy/releases/latest | grep tag_name | cut -d : -f 2,3 | tr -d ' v\",')
URL=https://github.com/xmrig/xmrig-proxy/releases/download/v${VERSION}/xmrig-proxy-${VERSION}-linux-static-x64.tar.gz
curl -L -s ${URL} --output xmrig-proxy.tar.gz
tar xvpf xmrig-proxy.tar.gz xmrig-proxy-$VERSION/xmrig-proxy --strip-components=1 -C .
rm -rf xmrig-proxy.tar.gz
