#!/bin/sh

if [ ! -z "${GIT_NAME}" ]; then
    git config --global user.name "${GIT_NAME}"
fi
if [ ! -z "${GIT_EMAIL}" ]; then
    git config --global user.email "${GIT_EMAIL}"
fi
exec "$@"
