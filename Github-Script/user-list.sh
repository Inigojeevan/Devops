#!bin/bash

URL="https://api.github.com"

USER=$username
TOKEN=$token

FOUNDER=$1
REPO-NAME=$2

helper

function get {
        local endpoint="$1"
        local url ="${URL}/$endpoint"

        curl -s -u "${USER}:{TOKEN}" "$url"
}

function list-users {
        local endpoint="repos/${FOUNDER}/${REPO-NAME}/collaborators"
        collaborators="$(get "$endpoint" | jq -r '.[] | select(.permissions.pull == true) | .login')"

        if [[ -z "$collaborators" ]]; then
                echo "No users with read access found for ${FOUNDER}/${REPO-NAME}."
        else
                echo "Users with read access permissions to ${FOUNDER}/${REPO-NAME}:"
                echo "$collaborators"
        fi
}

echo "Users with read access to ${FOUNDER}/${REPO-NAME}"
list-users

function helper{
        cmd_args=2
        if [ $# -ne $cmd_args ]; then
            echo "Enter the needed arguments to excecute the script"
        fi
}
