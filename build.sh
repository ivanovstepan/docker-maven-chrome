#!/bin/bash

set -e

# jdk-8

docker build --pull -t maven-chrome:jdk-8 jdk-8
TAG=jdk-8 bats test

# jdk-11

docker build --pull -t maven-chrome:jdk-11 jdk-11
TAG=jdk-11 bats test

# jdk-17

docker build --pull -t maven-chrome:jdk-17 jdk-17
TAG=jdk-17 bats test

# jdk-18

docker build --pull -t maven-chrome:jdk-18 -t maven-chrome jdk-18
TAG=jdk-18 bats test
