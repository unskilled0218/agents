#!/bin/bash

curl -fsSL https://opencode.ai/install | bash
source ~/.bashrc
source ~/.profile
curl -fsSL https://raw.githubusercontent.com/hyhmrright/brooks-lint/main/scripts/install.sh | bash -s -- opencode
curl -fsSL https://claude.ai/install.sh | bash
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
source ~/.profile
claude plugin marketplace add hyhmrright/brooks-lint
claude plugin install brooks-lint@brooks-lint-marketplace
curl -fsSL https://chatgpt.com/codex/install.sh | sh
source ~/.bashrc
source ~/.profile
