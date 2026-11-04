#!/usr/bin/env bash

set -euo pipefail

repo_url="${OPENCODE_SKILLS_REPO_URL:-https://git.lan/dev/agents/}"
data_home="${XDG_DATA_HOME:-${HOME}/.local/share}"
repo_dir="${OPENCODE_SKILLS_REPO_DIR:-${data_home}/opencode/agents}"

# The internal Git server uses a self-signed certificate. Keep the exception
# scoped to that server so other remotes still use certificate verification.
git_options=(-c http.https://git.lan/.sslVerify=false)

if [[ -e "${repo_dir}" ]]; then
  if [[ ! -d "${repo_dir}/.git" ]]; then
    printf 'Not a skill repository: %s\n' "${repo_dir}" >&2
    exit 1
  fi
  git "${git_options[@]}" -C "${repo_dir}" fetch --prune
  # Treat the installed checkout as disposable: replace tracked local changes
  # and divergent commits with the current upstream version.
  printf 'Force updating %s to its upstream (discarding tracked local changes).\n' "${repo_dir}"
  git "${git_options[@]}" -C "${repo_dir}" reset --hard '@{upstream}'
else
  mkdir -p -- "$(dirname -- "${repo_dir}")"
  git "${git_options[@]}" clone -- "${repo_url}" "${repo_dir}"
fi

bash "${repo_dir}/scripts/install-skills.sh"
