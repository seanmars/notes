- Remove all none images

```sh
docker rmi $(docker images --filter "dangling=true" -q --no-trunc)
```
