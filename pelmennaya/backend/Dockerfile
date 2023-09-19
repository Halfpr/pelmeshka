FROM golang:1.19.13
ARG VERSION=${VERSION}
RUN curl https://storage.yandexcloud.net/cloud-certs/CA.pem -o YandexInternalRootCA.crt
COPY ./pelmennaya-backend-${VERSION} ./pelmennaya-backend    
EXPOSE 8081
ENTRYPOINT ["/go/pelmennaya-backend"]
