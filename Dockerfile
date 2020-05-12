FROM golang
# Set /go_channel to the go folder as workdir
WORKDIR /go_channel
# Generate binary file from our /go_channel
RUN go build
# Run the go_channel binarry file 
CMD ["./go_channel"]