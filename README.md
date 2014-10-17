The latest 1.3.0 version of boot2docker changes a couple of things:

- comes with TLS enabled by default
- changes default port from 2375 to **2376**
- needs 3 env variable to be set

## Issue

While switching on TLS is highly recommended, but its not backward compatible.
Some tools or environments are relying to be able to connect to Docker
via simple http. So after upgrading to 1.3.0 they might break.

## Workaround

One solution is to start a container which uses `socat` to proxy the unix
socket file as tcp port. It is containerized for you:

```
$(docker run sequenceiq/socat)
```

Now you can reach Docker the *old* way:

```
curl http://192.168.59.103:2375/_ping
OK
```
