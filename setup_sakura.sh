#!/bin/bash

# if [[ $# -lt 1 ]] || [[ $# -gt 1 ]]; then
#     echo "usage: $0 input_file"
#     exit 1
# fi

# zsh
sudo yum install zsh -y

# apache module with c++
sudo yum install httpd httpd-devel make gcc gcc-c++ -y
