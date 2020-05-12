FROM golang
# Set /test_go to the go folder as workdir
WORKDIR $GOPATH/src/test_go
# Generate binary file from our /test_go
COPY . .
RUN go build -o /go/bin/abc $GOPATH/src/test_go/
# Run the test_go binarry file 
# CMD ["./test_go"]
RUN chmod 755 /go/bin/abc
ENTRYPOINT "/bin/sh","-c","/go/bin/abc"