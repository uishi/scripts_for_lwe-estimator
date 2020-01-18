#!/bin/bash

sageprefix=$(cat ./config.txt)

echo "Deleting $sageprefix/*.sage ..."
$(rm $sageprefix/*.sage)
if [ $? -eq 0 ]
then
  echo "done."
fi
