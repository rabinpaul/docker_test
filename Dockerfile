# Telling to use Docker's golang ready image
FROM golang
# Create go_channel folder 
RUN mkdir /go_channel
# Copy our file in the host contianer to our contianer
ADD . /go_channel
# Set /go_channel to the go folder as workdir
WORKDIR /go_channel
# Generate binary file from our /go_channel
RUN go build
# Run the go_channel binarry file 
CMD ["./go_channel"]