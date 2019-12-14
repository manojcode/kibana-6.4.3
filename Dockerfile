FROM alpine:3.7 as builder
COPY kibana /kibana
RUN apk add --no-cache zip
RUN zip -r /tigera_customization.zip kibana

FROM docker.elastic.co/kibana/kibana:6.4.3
