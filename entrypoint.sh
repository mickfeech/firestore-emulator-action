#!/bin/sh

# Check user environment variable
if [[ -z "${INPUT_FIRESTOREPROJECTID}" ]]; then
  echo "Missing FIRESTOREPROJECTID environment variable" >&2
  exit 1
fi

docker run --name firestore --publish 8081:8081 -e INPUT_FIRESTOREPROJECTID=$INPUT_FIRESTOREPROJECTID --detach mickfeech/firestore-emulator:latest