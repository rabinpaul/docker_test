FROM golang
# Set /test_go to the go folder as workdir
WORKDIR $GOPATH/src/test_go
# Generate binary file from our /test_go
COPY . .
RUN go build -o /bin $GOPATH/src/test_go/
# Run the test_go binarry file 
# CMD ["./test_go"]