#!/usr/bin/env sh

. ./.env

docker build --quiet="true" --tag=$TAG .

echo "\n** Running ${RUNNER} in container...\n"
docker run   --rm -t -i $TAG \
  $RUNNER $@
