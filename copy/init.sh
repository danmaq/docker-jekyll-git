#!/bin/sh

if [ ! -z "${GIT_NAME+x}" ] ; then
    git config --global user.name ${GIT_NAME}
fi
if [ ! -z "${GIT_EMAIL+x}" ] ; then
    git config --global user.email ${GIT_EMAIL}
fi
