# Docker

- [Docker machine][Windows] change localtion

```bash
export MACHINE_STORAGE_PATH=yourpath
docker-machine create -d virtualbox yourmachinename
```

- [Docker machine][Windows][OS X] mount other volume

```
# use virtualbox GUI to add shared folder(sharedname, path) and make it automount, permanent

# after start docker-machine
docker-machine ssh default 'sudo mkdir -p /dir ; sudo mount -t vboxsf sharedname /dir'

# NOTE: Must set the lang, otherwise it will fail to save file to bootlocal.sh(encoding)
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
# or your can create and edit bootlocal.sh
sudo vi /var/lib/boot2docker/bootlocal.sh
# add command below
sudo mkdir -p /yourfoldername
sudo mount -t vboxsf sharedname /yourfoldername
```

- [Docker machine] into docker

```bash
docker exec -ti dockernameorid bash
```

- [Docker machine] run

```bash
 # with port
 docker run -tid -p 80:80 dockername
 # with volume
 docker run -v /Users/<path>:/<container path>
 # e.g.
 docker run -ti -p 80:80 -p 443:443 -p 3306:3306 -v /workspace:/var/www/html/ --name=dev ubuntu14.04:0.14
```
