#!/bin/bash

printf "\n--------------------------------------------------------------------------------\n"
printf "Building...............\n"

docker build --tag=centos-vim8 .
docker build --tag=centos-vim8-full -f ./Dockerfile-FullBuild .

clear
printf "\n--------------------------------------------------------------------------------\n"
printf "Checking version from rpm install\n"
VERSION=`docker run centos-vim8 | grep "Vi IMproved 8"`
printf "$VERSION\n"

printf "\n--------------------------------------------------------------------------------\n"
printf "Checking version from full vim build/make\n"
VERSION=`docker run centos-vim8-full | grep "Vi IMproved 8"`
printf "$VERSION\n\n"
