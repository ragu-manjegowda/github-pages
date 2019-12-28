#!/bin/bash

################################################################################
#################### For MacOS #################################################
################################################################################
if [ "$(uname)" == "Darwin" ]; then
  DEV_OPTS="-v ${PWD}:/mnt"

  if [ -f /Users/${USER}/.bash_profile ]; then
    BASHRC="-v /Users/${USER}/.bash_profile:/home/dev/.bashrc:rw "
  fi
 
  eval "sudo docker pull ragumanjegowda/docker:latest"
  eval "sudo docker run --name "ragu" $DEV_OPTS $BASHRC` 
          `-dit ragumanjegowda/docker:latest /bin/bash"

################################################################################
#################### For Linux #################################################
################################################################################
elif [ "$(uname -s)" == "Linux" ]; then
  DEV_OPTS="-v ${PWD}:/mnt"

  if [ -f /home/${USER}/.bashrc ]; then
    BASHRC="-v /home/${USER}/.bashrc:/home/${USER}/.bashrc:rw "
  fi

  eval "sudo docker pull ragumanjegowda/docker:latest"
  eval "sudo docker run --name "ragu" $DEV_OPTS $BASHRC `
          `-dit ragumanjegowda/docker:latest /bin/bash"

################################################################################
# Any other OS
################################################################################
else
  echo "$(uname) is not supported" >&2
  exit 1
fi
