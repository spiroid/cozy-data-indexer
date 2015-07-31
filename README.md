# Build:

```
docker build -t spiroid/cozy-data-indexer .
```


# Dependencies

[Cozy CouchDb](https://registry.hub.docker.com/u/spiroid/cozy-couchdb/)


# Run:

With docker-compose :

```
dataindexer:
    image: obigroup/cozy-dataindexer
    hostname: dataindexer
    volumes_from:
    - couchdb
```


# More about updates

```
https://forum.cozy.io/t/deployer-cozy-avec-docker-et-des-containers-autonomes/468
```
