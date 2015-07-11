#!/bin/bash

function init() {
    # build directory doesn't exist?
    if [ ! -d "$2" ]; then
        mkdir $2
    fi

    if [ ! -d $2/.git ]; then
        rm -rf $2
        git clone --quiet $1 $2
    fi
}

function sync() {
    git checkout --orphan $1
    git fetch origin
    git reset --hard origin/$1
}

function clean() {
    rm -rf $1/*.*
}

function build() {
    npm run release
    cp -r $1/dist/* $2
}

function pushToBranch() {
    sha1=`git rev-parse $(git log --oneline -n 1 . | awk '{{print $1}}')`
    git add -A
    git commit -m "[ci skip] Update with ${sha1}"
    git push --quiet $1 $2
}

# ------------------------------

readonly PROJECT_ROOT=`git rev-parse --show-toplevel`
readonly REMOTE_REPOSITORY=`git config --get remote.origin.url`
readonly BUILD_DIR=$PROJECT_ROOT/build
readonly PUBLISH_BRANCH='gh-pages'

repo=`echo $REMOTE_REPOSITORY | sed -e 's/ssh:\/\/git@github\.com\(.*\)/https:\/\/$GH_TOKEN@github\.com\1\.git/'`

cd $PROJECT_ROOT
init $repo $BUILD_DIR
cd $BUILD_DIR
sync $PUBLISH_BRANCH
clean $BUILD_DIR
build $PROJECT_ROOT $BUILD_DIR
pushToBranch $repo $PUBLISH_BRANCH
