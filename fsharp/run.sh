#!/usr/bin/env sh

. ./.env

docker build --quiet="true" --tag=$TAG .

echo "\n** Running ${RUNNER} in container..."
docker run   --rm -t -i $TAG \
  $RUNNER $@
