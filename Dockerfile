FROM alpine:3.7

RUN apk add --no-cache varnish

CMD varnishd \
  -a 0.0.0.0:80 \
  -s malloc,256M \
  -f /etc/varnish/default.vcl && varnishlog
