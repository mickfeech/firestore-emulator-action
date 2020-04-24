#!/bin/sh

# Check user environment variable
if [[ -z "${INPUT_FIRESTOREPROJECTID}" ]]; then
  echo "Missing FIRESTOREPROJECTID environment variable" >&2
  exit 1
fi

docker_run="docker run"
docker_run="$docker_run -d -p 8081:8081 -e INPUT_FIRESTOREPROJECTID:$INPUT_FIRESTOREPROJECTID" mickfeech/firestore-emulator
