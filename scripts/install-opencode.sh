#!/usr/bin/env bash

git -c http.sslVerify=false clone https://git.lan/dev/agents/ /tmp/agents

set -euo pipefail

curl -fsSL https://opencode.ai/install | bash
curl -fsSL https://raw.githubusercontent.com/hyhmrright/brooks-lint/main/scripts/install.sh | bash -s -- opencode
bash /tmp/agents/install-skills.sh

touch ~/workdir/command.md