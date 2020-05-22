FROM golang:alpine
EXPOSE 8080
ADD ./ip-check.go ipcheck.go
RUN go build -o ipcheck
CMD ./ipcheck
