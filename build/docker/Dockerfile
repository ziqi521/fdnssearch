FROM golang:1.15-alpine as build
RUN apk --no-cache add build-base gcc git
WORKDIR /opt/fdnssearch
COPY . .
RUN make install

FROM alpine:latest
COPY --from=build /go/bin/fdnssearch /bin/fdnssearch
ENTRYPOINT [ "/bin/fdnssearch" ]
