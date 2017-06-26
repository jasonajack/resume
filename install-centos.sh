#!/bin/bash -ex

# Install dependencies
sudo yum install -y php php-mbstring wkhtmltopdf composer vim

# Pull submodules
git submodule update --init

# Build submodule
pushd markdown-resume
composer install
./vendor/bin/pake build
popd

