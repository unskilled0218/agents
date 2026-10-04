#!/usr/bin/env bash

set -euo pipefail

curl -fsSL https://opencode.ai/install | bash
curl -fsSL https://raw.githubusercontent.com/hyhmrright/brooks-lint/main/scripts/install.sh | bash -s -- opencode
bash /tmp/agents/scripts/install-skills.sh

touch ~/workdir/command.md