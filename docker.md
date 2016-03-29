**[Docker machine][Windows] change localtion**

    export MACHINE_STORAGE_PATH=yourpath
    docker-machine create -d virtualbox yourmachinename

**[Docker] run with port**

    docker run -tid -p 80:80 dockername

**[Docker] run with data volume**

    docker run -v /Users/<path>:/<container path> 
