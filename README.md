# docker-sshtunnel

```
docker build -t explicitvoid/sshtunnel:serveo .
docker run -d --name sshtunnel -p 2222:22 --rm explicitvoid/sshtunnel:serveo
docker logs sshtunnel
```
