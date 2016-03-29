**[Docker machine][Windows] change localtion**

    export MACHINE_STORAGE_PATH=yourpath
    docker-machine create -d virtualbox yourmachinename

**[Docker] run with port**

    docker run -ti -p 80:80 dockername
    docker run -ti -p 127.0.0.1:80:80 dockername
