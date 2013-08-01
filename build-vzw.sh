#!/bin/sh
# first check if build-varints master script set version number
if [ "$RLSVER" != "" ]; then
     :
else
# if that is not set fallback to cmdline option
if [ "$1" != "" ]; then
     export RLSVER="v$1"
     echo "Set Release version to $RLSVER"
else
# do nothing
     :
  fi
fi
export CARRIER="VZW"
export ADD_CHRONIC_CONFIG="Y"
export EXEC_LOKI="Y"
echo "### VERIZON KERNEL BUILD ###"
./build_master.sh
