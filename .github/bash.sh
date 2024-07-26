#!/bin/sh

set -e

TOKEN=$GITHUB_TOKEN
COMENT=$1
USER=$2
APPROVAL='ok yes approved go'
APPROVERS=ivancorniel

if ! echo $APPROVERS | tr ' ' '\n' | grep -q $USER || ! echo $APPROVAL | tr ' ' '\n' | grep -q $COMENT ; then
  echo "DEPLOYMENT='NOT APPROVED'" >> "$GITHUB_ENV"
else
  echo "DEPLOYMENT='APPROVED'" >> "$GITHUB_ENV"
fi
