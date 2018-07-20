#!/bin/bash

KONFIG_DIR=~/.konfig

# Initialize submodules
( cd $KONFIG_DIR; git submodule update --init --recursive)

# Set submodules to master
BUNDLE_DIR=$KONFIG_DIR/vim/bundle
for D in `find $BUNDLE_DIR -maxdepth 1 ! -path $BUNDLE_DIR -type d`
do
  (cd $D; git checkout stable || git checkout master)
done
# git submodule status | awk '{print $2}'
