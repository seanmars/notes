**[Docker machine][Windows] change localtion**

    export MACHINE_STORAGE_PATH=yourpath
    docker-machine create -d virtualbox yourmachinename

**[Docker machine][Windows] mount other volume**

    use virtualbox GUI to add shared folder(sharedname, path) and make it automount, permanent
    // after start docker-machine
    docker-machine ssh default 'sudo mkdir -p /dir ; sudo mount.vboxsf sharedname /dir'

**[Docker] run with port**

    docker run -tid -p 80:80 dockername

**[Docker] run with data volume**

    docker run -v /Users/<path>:/<container path> 
