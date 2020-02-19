# Source this file

function drsh() {
    if [ -z "$*" ]; then
        echo "Runs a docker container or image. Usage: $0 <container-or-image> [<executable> args...]"
        return
    fi
    local container=$1
    shift
    local executable=${1:-"/bin/sh"}
    shift
    docker run --entrypoint="${executable}" -it ${container} "$@"
}

function dxsh() {
    if [ -z "$*" ]; then
        echo "Attaches to a running  docker container. Usage: $0 <container-or-image> [<executable> args...]"
        return
    fi
    local container=$1
    shift
    local executable=${1:-"/bin/sh"}
    shift
    docker exec -it ${container} "${executable}" "$@"
}

function dcsh {
    if [ -z "$*" ]; then
        echo "Runs a docker-compose service entry. Usage: $0 <service> [<executable> args...]"
        return
    fi
    local service=$1
    shift
    local executable=${1:-"/bin/sh"}
    shift
    docker-compose run --entrypoint="${executable}" ${service} "$@"
}

function dcshf {
    if [ -z "$*" ]; then
        echo "Runs a docker-compose service entry with a specific compose file."
        echo "Usage: $0 <compose-file> <service> [<executable> args...]"
        return
    fi
    local compose_file="$1"
    shift
    local service=$1
    shift
    local executable=${1:-"/bin/sh"}
    shift
    # Allow to only give the differentiating part of the compose file name.
    local possible_compose_file="docker-compose-${compose_file}.yml"
    if [ -r "${possible_compose_file}" ]; then
        echo "Found ${possible_compose_file} for ${compose_file}."
        compose_file="${possible_compose_file}";
    fi
    docker-compose -f "${compose_file}" run --entrypoint="${executable}" ${service} "$@"
}

function docker-image-children {
    if [ -z "$*" ]; then
        echo "Lists IDs of child images, given an image ID."
        echo "Usage: $0 <image-hash>"
        return
    fi
    local children="$(docker images --filter since="$1" --quiet)"
    if [ -z "${children}" ]; then
        echo "No children." >&2
        return
    fi
    docker inspect --format='{{.Id}} {{.Parent}}' "${children}"
}
