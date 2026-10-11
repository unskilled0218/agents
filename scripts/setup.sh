#!/usr/bin/env bash

set -euo pipefail

curl -fsSL https://opencode.ai/install | bash
curl -fsSL https://raw.githubusercontent.com/hyhmrright/brooks-lint/main/scripts/install.sh | bash -s -- opencode
curl -fsSLk https://git.lan/dev/agents/raw/branch/main/scripts/update-skills.sh | bash

touch ~/workdir/command.md
