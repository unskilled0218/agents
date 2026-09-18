#!/bin/bash

curl -fsSL https://opencode.ai/install | bash
cat >> ~/.bashrc<<EOF
export PATH=~/.opencode/bin/:$PATH
EOF
source ~/.bashrc
curl -fsSL https://raw.githubusercontent.com/hyhmrright/brooks-lint/main/scripts/install.sh | bash -s -- opencode
