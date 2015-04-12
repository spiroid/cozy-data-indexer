# Build:
```
docker build -t obigroup/cozy-dataindexer .
```

# Dependencies
[Cozy CouchDb](https://registry.hub.docker.com/u/obigroup/cozy-couchdb/)

# Run:
With fig :
```
dataindexer:
    image: obigroup/cozy-dataindexer
    hostname: dataindexer
    volumes_from:
    - couchdb
```

#More about updates
```
https://forum.cozy.io/t/deployer-cozy-avec-docker-et-des-containers-autonomes/468
```