FROM debian:trixie-slim

RUN apt-get update && apt-get install -y curl

ADD install.sh .
RUN bash install.sh

ENV USER NaN
ENV POOL pool.supportxmr.com:5555
ENV PASSWORD x
ENV DONATE_LEVEL 0
ENV RETRY_SWITCH_POOL 2
ENV RETRY_TIMEOUT_SECONDS 1
ENV PORT 3333
ENV HTTP_PORT 3334
ENV CUSTOM_DIFF ""

ENTRYPOINT ./xmrig-proxy --donate-level=$DONATE_LEVEL -r $RETRY_SWITCH_POOL -R $RETRY_TIMEOUT_SECONDS -b 0.0.0.0:$PORT --http-enabled --http-host=0.0.0.0 --http-port=$HTTP_PORT --workers user -o $POOL -u $USER -p $PASSWORD ${CUSTOM_DIFF:+--custom-diff=$CUSTOM_DIFF}
