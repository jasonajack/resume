#!/bin/bash -ex

# Install dependencies
sudo yum install -y php php-mbstring wkhtmltopdf composer vim firefox

# Pull submodules
git submodule update --init
pushd markdown-resume
git remote add upstream git@github.com:there4/markdown-resume.git
git fetch upstream
popd

# Build submodule
pushd markdown-resume
composer install
./vendor/bin/pake build
popd

