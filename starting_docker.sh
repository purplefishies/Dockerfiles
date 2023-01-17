#!/bin/bash

docker run  --workdir $HOME --network=host                \
       -v $HOME/.ssh:$HOME/.ssh                           \
       -v/local:/local                                    \
       -v $HOME/.gitconfig:$HOME/.gitconfig               \
       -v $PWD/imx-dev:$HOME/imx-dev                      \
       -v $HOME/.docker_bash_history:$HOME/.bash_history  \
       -v $HOME/TMP/build_yocto:$HOME/build_yocto         \
       -v $HOME/csxvia-yocto:$HOME/csxvia-yocto           \
       -v $HOME/.inputrc:$HOME/.inputrc:ro                \
       -v $HOME/.bashrc:$HOME/.bashrc:ro                  \
       -v $HOME/.ls_colors:$HOME/.ls_colors  -e UID="$(id --user)" -e GID="$(id -g )" -it ubuntu14
