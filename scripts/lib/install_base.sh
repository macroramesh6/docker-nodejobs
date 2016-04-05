#!/bin/bash
set -e
apt-get update -y
apt-get install -y curl bzip2 build-essential python git
#echo 'deb http://ftp.us.debian.org/debian/ testing main contrib non-free' >> /etc/apt/sources.list && apt-get update && apt-get install -y -t testing libc6
