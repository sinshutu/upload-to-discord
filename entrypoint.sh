#! /bin/sh

# Ensure that the DISCORD_WEBHOOK secret is included
if [[ -z "$DISCORD_WEBHOOK" ]]; then
  echo "Set the DISCORD_WEBHOOK env variable."
  exit 1
fi

# Ensure that the file path is present
if [[ -z "$1" ]]; then
  echo "You must pass at least one argument to this action, the path to the file to upload."
  exit 1
fi

curl -H 'Content-Type: multipart/form-data' \
-X POST \
-F "file=@$1" $DISCORD_WEBHOOK
