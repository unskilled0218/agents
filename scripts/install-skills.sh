#!/usr/bin/env bash

set -euo pipefail

script_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
repo_dir="$(cd -- "${script_dir}/.." && pwd)"
source_dir="${repo_dir}/skills"
config_home="${XDG_CONFIG_HOME:-${HOME}/.config}"
target_dir="${config_home}/opencode/skills"

mkdir -p "${target_dir}"
mkdir -p "${target_dir}/_shared"

cp "${source_dir}/AGENTS.md" "${target_dir}/_shared/my-agents.md"

for skill_file in "${source_dir}"/*/SKILL.md; do
  skill_dir="$(dirname -- "${skill_file}")"
  skill_name="$(basename -- "${skill_dir}")"
  target="${target_dir}/${skill_name}"

  if [[ -L "${target}" ]]; then
    current="$(readlink -- "${target}")"
    if [[ "${current}" == "${skill_dir}" ]]; then
      continue
    fi
    printf 'Refusing to replace symlink: %s -> %s\n' "${target}" "${current}" >&2
    exit 1
  fi

  if [[ -e "${target}" ]]; then
    printf 'Refusing to replace existing path: %s\n' "${target}" >&2
    exit 1
  fi
done

installed=0
for skill_file in "${source_dir}"/*/SKILL.md; do
  skill_dir="$(dirname -- "${skill_file}")"
  skill_name="$(basename -- "${skill_dir}")"
  target="${target_dir}/${skill_name}"

  if [[ -L "${target}" ]]; then
    printf 'Already installed: %s\n' "${skill_name}"
    continue
  fi

  ln -s "${skill_dir}" "${target}"
  printf 'Installed: %s\n' "${skill_name}"
  installed=$((installed + 1))
done

printf 'Installed %d skill(s) in %s\n' "${installed}" "${target_dir}"
printf 'Restart OpenCode to load the skills.\n'
