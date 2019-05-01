# docker-sshtunnel

```
docker build -t explicitvoid/sshtunnel .
docker run -d --name sshtunnel -p 2222:22 --rm explicitvoid/sshtunnel
docker logs sshtunnel
```
Specify alternate user using `-e USER=username`

Specify alternate password using `-e PASS=password`

Use Serveo using `-e USESERVEO=yes`

Example: `docker run -d --rm --name sshtunnel -e USER=tunneluser -e PASS=changeme -e USESERVEO=yes explicitvoid/sshtunnel`
