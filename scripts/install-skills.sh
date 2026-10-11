#!/usr/bin/env bash

set -euo pipefail

script_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
repo_dir="$(cd -- "${script_dir}/.." && pwd)"
source_dir="${repo_dir}/skills"
config_home="${XDG_CONFIG_HOME:-${HOME}/.config}"
target_dir="${config_home}/opencode/skills"

shopt -s nullglob
skill_files=("${source_dir}"/*/SKILL.md)
if [[ ! -f "${source_dir}/AGENTS.md" || ${#skill_files[@]} -eq 0 ]]; then
  printf 'No skills found in: %s\n' "${source_dir}" >&2
  exit 1
fi

mkdir -p "${target_dir}"
mkdir -p "${target_dir}/_shared"

cp "${source_dir}/AGENTS.md" "${target_dir}/_shared/my-agents.md"

for skill_file in "${skill_files[@]}"; do
  skill_dir="$(dirname -- "${skill_file}")"
  skill_name="$(basename -- "${skill_dir}")"
  target="${target_dir}/${skill_name}"

  if [[ -z "${skill_name}" || "${target}" == "${target_dir}" ]]; then
    printf 'Skipping invalid skill name: %s\n' "${skill_dir}" >&2
    continue
  fi

  if [[ -L "${target}" && "$(readlink -- "${target}")" == "${skill_dir}" ]]; then
    printf 'Up to date: %s\n' "${skill_name}"
    continue
  fi

  if [[ -e "${target}" || -L "${target}" ]]; then
    rm -rf -- "${target}"
    printf 'Replaced: %s\n' "${skill_name}"
  fi

  ln -s -- "${skill_dir}" "${target}"
  printf 'Installed: %s\n' "${skill_name}"
done

caveman_file="$(mktemp "${target_dir}/_shared/.caveman.XXXXXX")"
trap 'rm -f -- "${caveman_file}"' EXIT
curl -fsSL https://raw.githubusercontent.com/JuliusBrussee/caveman/refs/heads/main/skills/caveman/SKILL.md -o "${caveman_file}"
mv -- "${caveman_file}" "${target_dir}/_shared/caveman.md"

printf 'Restart OpenCode to load the skills.\n'
