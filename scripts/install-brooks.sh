#!/usr/bin/env bash

set -euo pipefail

repo_url="${OPENCODE_SKILLS_REPO_URL:-https://github.com/hyhmrright/brooks-lint}"
data_home="${XDG_DATA_HOME:-${HOME}/.local/share}"
repo_dir="${OPENCODE_SKILLS_REPO_DIR:-${data_home}/opencode/brooks}"

if [[ -e "${repo_dir}" ]]; then
  if [[ ! -d "${repo_dir}/.git" ]]; then
    printf 'Not a skill repository: %s\n' "${repo_dir}" >&2
    exit 1
  fi
  git "${git_options[@]}" -C "${repo_dir}" pull --ff-only
else
  mkdir -p -- "$(dirname -- "${repo_dir}")"
  git "${git_options[@]}" clone -- "${repo_url}" "${repo_dir}"
fi

source_dir="${repo_dir}/skills"
config_home="${XDG_CONFIG_HOME:-${HOME}/.config}"
target_dir="${config_home}/opencode"

mkdir -p "${target_dir}"

mv "${source_dir}" "${target_dir}"

echo "Installed brooks"
