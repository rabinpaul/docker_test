FROM alpine
RUN mkdir /testgo
ADD . /testgo
WORKDIR /testgo
RUN go build -o test .
CMD ["/testgo/test"]