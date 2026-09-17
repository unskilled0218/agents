#!/bin/bash

curl -fsSL https://opencode.ai/install | bash
source ~/.bashrc
source ~/.profile
curl -fsSL https://raw.githubusercontent.com/hyhmrright/brooks-lint/main/scripts/install.sh | bash -s -- opencode
