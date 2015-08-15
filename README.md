# Cozy data indexer

Data indexer image for the [cozy cloud](https://cozy.io) stack


## Pull the image

```
$ docker pull spiroid/cozy-data-indexer
```


## Build it yourself

```
$ git clone git@github.com:spiroid/cozy-data-indexer.git
$ cd cozy-data-indexer
$ doker build -t spiroid/cozy-data-indexer .
```

## Run:

With docker-compose:

```
configuration:
    image: spiroid/cozy-conf

dataindexer:
    image: spiroid/cozy-data-indexer
    hostname: dataindexer
    volumes_from:
        - configuration

```


## Related images

This configuration image was created to work with the following images:

  * [cozy conf](https://github.com/spiroid/cozy-conf)
  * [cozy couchdb data](https://github.com/spiroid/cozy-couchdb-data) 
  * [cozy couchdb](https://github.com/spiroid/cozy-couchdb)
  * [cozy controller](https://github.com/spiroid/cozy-controller)


## Inspirations

 * https://forum.cozy.io/t/deployer-cozy-avec-docker-et-des-containers-autonomes/468
