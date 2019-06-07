# Source this file

function drsh() {
    if [ -z "$*" ]; then
        echo "Runs a docker container or image. Usage: $0 <container-or-image> [<executable> args...]"
        exit
    fi
    local container=$1
    shift
    local executable=${1:-"/bin/sh"}
    shift
    docker run -it --entrypoint=${executable} ${container} "$@"
}

function dcsh {
    if [ -z "$*" ]; then
        echo "Runs a docker-compose service entry. Usage: $0 <service> [<executable> args...]"
        exit
    fi
    local service=$1
    shift
    local executable=${1:-"/bin/sh"}
    shift
    docker-compose run --entrypoint=${executable} ${service} "$@"
}

function dcshf {
    if [ -z "$*" ]; then
        echo "Runs a docker-compose service entry with a specific compose file."
        echo "Usage: $0 <compose-file> <service> [<executable> args...]"
        exit
    fi
    local compose_file="$1"
    shift
    local service=$1
    shift
    local executable=${1:-"/bin/sh"}
    shift
    docker-compose -f "${compose_file}" run --entrypoint=${executable} ${service} "$@"
}
