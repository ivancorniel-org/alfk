#!/bin/sh

set -e

COMENT=$1
USER=$2
APPROVERS='ivancorniel nishedcob Alan1108'
APPROVAL='ok yes approved go'

if ! echo $APPROVERS | tr ' ' '\n' | grep -q $USER || ! echo $APPROVAL | tr ' ' '\n' | grep -q $COMENT ; then
  echo deployment not approved
  exit 1
else
  echo $USER approved with $COMENT
fi
