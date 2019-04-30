# docker-sshtunnel

```
docker build -t explicitvoid/sshtunnel .
docker run -d --name sshtunnel -p 2222:22 --rm explicitvoid/sshtunnel
docker logs sshtunnel
```
