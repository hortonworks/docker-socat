The latest 1.3.0 version of boot2docker changes the a couple of things:

- comes with TLS enabled by default
- changes default port from 2375 to **2376**
- needs 3 env variable to be set

To set the environment is easy by: `$(boot2docker shellinit)`

## Issue

While switching on TLS is highly recommended, but its not backward compatible,
 

## Workaround

```
$(docker run sequenceiq/socat)
```
