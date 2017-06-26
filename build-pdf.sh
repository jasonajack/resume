#!/bin/bash -ex
cd $(dirname ${0})

###
# Build resume (resume help displayed in comments)
#
#   Markdown Resume Generator version 2.0.10 by Craig Davis
#   
#   Usage:
#     [options] command [arguments]
#   
#   Options:
#     --help           -h Display this help message.
#     --quiet          -q Do not output any message.
#     --verbose        -v|vv|vvv Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
#     --version        -V Display this application version.
#     --ansi              Force ANSI output.
#     --no-ansi           Disable ANSI output.
#     --no-interaction -n Do not ask any interactive question.
#   
#   Available commands:
#     help         Displays help for a command
#     html         Generate an HTML resume from a markdown file
#     list         Lists commands
#     pdf          Generate a PDF from a markdown file
#     selfupdate   Updates md2resume.phar to the latest version.
#     stats        Generate a word frequency analysis of your resume
#     templates    List available templates
#     version      Show current version information
#
# ————————————————————————————————————————————————————————————————————————————————
#  Available Templates                                                            
# ————————————————————————————————————————————————————————————————————————————————
# blockish       Blocky and bold colors
# modern         Modern and clean layout (default)
# readable       Bootswatch 'readable' theme
# swissen        Simple Helvetica based layout from Aaron Glenn
# unstyled       Unstyled, useful as a base for your own templates
#

curDir=$(readlink -f $(pwd))
buildDir=${curDir}/build
mkdir -p ${buildDir}
./markdown-resume/bin/md2resume pdf --template modern ${curDir}/Resume.md ${buildDir}

