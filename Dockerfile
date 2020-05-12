FROM golang
# Set /test_go to the go folder as workdir
# WORKDIR /var/lib/jenkins/workspace/test_go
# Generate binary file from our /test_go
RUN go build /var/lib/jenkins/workspace/test_go
# Run the test_go binarry file 
# CMD ["./test_go"]