#!/bin/sh
set -e

CONTAINER_NAME=ftpd-lab
IMAGENAME=ftpd-lab
CONTAINER_FE=docker  # or CONTAINER_FE=podman

$CONTAINER_FE container stop ${CONTAINER_NAME} > /dev/null 2>&1 || true
$CONTAINER_FE container rm ${CONTAINER_NAME} > /dev/null 2>&1 || true

$CONTAINER_FE build -t $IMAGENAME --rm=true --force-rm=true --no-cache .
echo ""
echo "Start your container with the command:"
echo ""
echo "$CONTAINER_FE run --name ${CONTAINER_NAME} -d -v ${CONTAINER_NAME}:/var/lib/ftp -p 20:20 -p 21:21 -p 1024-1048:1024-1048 ${IMAGENAME}"


