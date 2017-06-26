#!/bin/bash -ex

# Install dependencies
sudo yum install -y php php-mbstring wkhtmltopdf

# Pull submodules
git submodule update --init
