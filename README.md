## WhatsMyIP

Simple HTTP server that returns clients IP address
In other words: *It tells you what your current external IP is*.

### Usage

Visiting "serveraddress:8080" in a browser or simply querying the service with curl:
```
curl serveraddress:8080
```
If behind a reverse proxy: 
```
curl whatsmyip.mydomain.com
```

It should preferably run on a server that's reachable over the Internet.
Any client requesting http://serveraddress:8080/ will receive its IP address (IPv4 or IPv6) back from the server.

### OCI Container

OCI container is available on Dockerhub at imbus64/whatsmyip, run it with:
```
docker run -d \
    -p 8080:8080 \
    --restart unless-stopped \
    --name whatsmyip \
    imbus64/whatsmyip
```
or alternatively with docker-compose:
```
version: "3.3"
services:
    whatsmyip:
        image: imbus64/whatsmyip
        container_name: whatsmyip
        restart: unless-stopped
        ports:
            - 8080:8080
```

### Run manually

    go build -o ipcheck && ./ipcheck
