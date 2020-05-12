FROM golang
# Set /test_go to the go folder as workdir
WORKDIR /test_go
# Generate binary file from our /test_go
RUN go build
# Run the test_go binarry file 
CMD ["./test_go"]