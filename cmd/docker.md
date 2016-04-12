**[Docker machine][Windows] change localtion**

    export MACHINE_STORAGE_PATH=yourpath
    docker-machine create -d virtualbox yourmachinename

**[Docker machine][Windows][OS X] mount other volume**

    use virtualbox GUI to add shared folder(sharedname, path) and make it automount, permanent
    
    // after start docker-machine
    docker-machine ssh default 'sudo mkdir -p /dir ; sudo mount -t vboxsf sharedname /dir'
    
    // Note: On OS X, ssh into docker machine, then export lang to utf8
    export LC_ALL=en_US.UTF-8
    export LANG=en_US.UTF-8
    // or your can create and edit bootlocal.sh
    sudo vi /var/lib/boot2docker/bootlocal.sh
    // add command below
    sudo mkdir -p /yourfoldername
    sudo mount -t vboxsf sharedname /yourfoldername

**[Docker] run with port**

    docker run -tid -p 80:80 dockername

**[Docker] run with data volume**

    docker run -v /Users/<path>:/<container path> 
