#!/bin/bash

function usage
{
    echo "Usage: prepare -u username [OPTIONS]"
    echo "  -?, --help, Display this help and exit."
    echo "  -u, User for login."
    echo "  -p, Password to use when connecting to server."
    echo "Options:"
    echo "  -h, Connect to host. Default is localhost."
    echo "  -P, Port number to use for connection. Default is 3306."
}

if [ "$#" -le 0 ] ; then
    usage
    exit
fi

DB_USER=
DB_PSWD=
DB_HOST=localhost
DB_PORT=3306

INPUT_PSWD=0

while [ "$1" != "" ]; do
    case $1 in
        # user
        -u | --user )
        shift
        DB_USER=$1
        ;;
        # password
        -p | --password )
        INPUT_PSWD=1
        ;;
        # host
        -h | --host )
        shift
        DB_HOST=$1
        ;;
        # port
        -P | --port )
        shift
        DB_PORT=$1
        ;;
        -? | ? | --help )
        usage
        exit
        ;;
        * )
        usage
        exit 1
    esac
    shift
done

if [ ${INPUT_PSWD} = 1 ] ; then
    # Read Password
    echo -n Password:
    read -s DB_PSWD
    echo
fi

echo ${DB_USER}
echo ${DB_PSWD}
echo ${DB_HOST}
echo ${DB_PORT}
