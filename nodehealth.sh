#!bin/bash

# Author: Vaishnavi
# Date: 4th Aug 2024
#
# This script outputs the node health
#
# Version: v1
#
#######################

set -x #debug mode
set -e #exits code when error in any command
set -o #pipefail

df -h

free -g

nproc

ps -ef | grep amazon | awk -F" " '{print $2}'
