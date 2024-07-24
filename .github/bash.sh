#!/bin/sh

set -e

COMENT=$1
USER=$2
APPROVAL='ok yes approved go'
APPROVERS=$(curl -s -H "Authorization: token ${{ secrets.GITHUB_TOKEN }}" \
  "https://api.github.com/orgs/ivancorniel-org/members" | jq -r '.[].login')
echo $APPROVERS
# if ! echo $APPROVERS | tr ' ' '\n' | grep -q $USER || ! echo $APPROVAL | tr ' ' '\n' | grep -q $COMENT ; then
#   echo deployment not approved
#   exit 1
# else
#   echo $USER approved with $COMENT
# fi
