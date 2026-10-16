#!/usr/bin/env bash

set -euo pipefail

curl -fsSL https://opencode.ai/install | bash
curl -fsSLk https://git.lan/dev/agents/raw/branch/main/scripts/install-brooks.sh | bash
curl -fsSLk https://git.lan/dev/agents/raw/branch/main/scripts/update-skills.sh | bash

touch ~/workdir/command.md
