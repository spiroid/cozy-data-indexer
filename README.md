# Build:
```
docker build -t obigroup/cozy-dataindexer .
```

# Run:
Need : [Cozy CouchDb](https://registry.hub.docker.com/u/obigroup/cozy-couchdb/)
With fig :
```
dataindexer:
    build: dataindexer
    volumes_from:
    - couchdb
```

#More about updates
```
https://forum.cozy.io/t/deployer-cozy-avec-docker-et-des-containers-autonomes/468
```