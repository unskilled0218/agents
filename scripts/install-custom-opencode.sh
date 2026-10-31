#!/usr/bin/env bash

set -euo pipefail

script_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
target_dir="${HOME}/.local/bin"

mkdir -p "${target_dir}"

cat > "${target_dir}/oc" <<'EOF'
#!/usr/bin/env bash
set -euo pipefail
exec opencode --yolo "$@"
EOF

cat > "${target_dir}/ocs" <<'EOF'
#!/usr/bin/env bash
set -euo pipefail
session_id="$(opencode session list --max-count 1 --format json | jq -er '.[0].id')"
exec opencode --yolo -s "${session_id}" "$@"
EOF

cat > "${target_dir}/ocl" <<'EOF'
#!/usr/bin/env bash
set -euo pipefail
exec opencode session list "$@"
EOF

cat > "${target_dir}/oca" <<'EOF'
#!/usr/bin/env bash
set -euo pipefail
exec opencode auth login openai "$@"
EOF

cp "${script_dir}/update-oc.sh" "${target_dir}/update-oc"
for command in oc ocs ocl oca update-oc; do
  chmod +x "${target_dir}/${command}"
  printf 'Installed: %s\n' "${command}"
done

path_line='export PATH=~/.local/bin:$PATH'
if ! grep -qxF "${path_line}" "${HOME}/.bashrc" 2>/dev/null; then
  printf '\n%s\n' "${path_line}" >> "${HOME}/.bashrc"
fi
