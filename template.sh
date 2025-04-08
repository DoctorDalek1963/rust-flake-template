#!/usr/bin/env nix-shell
#! nix-shell -i bash -p coreutils sd

# === CHANGE THESE =====

crate_name=""
repo_name=""
author_name="Dyson Dyson"
author_email="dyson.dyson@icloud.com"
project_description=""
nixpkgs_branch="24.11"

# === STOP HERE ========

docs_crate_name="$(echo "$crate_name" | tr '-' '_')"

files=(README.md Cargo.toml flake.nix)

sd -F "@CRATE_NAME@" "$crate_name" "${files[@]}"
sd -F "@REPO_NAME@" "$repo_name" "${files[@]}"
sd -F "@AUTHOR_NAME@" "$author_name" "${files[@]}"
sd -F "@AUTHOR_EMAIL@" "$author_email" "${files[@]}"
sd -F "@PROJECT_DESCRIPTION@" "$project_description" "${files[@]}"
sd -F "@NIXPKGS_BRANCH@" "$nixpkgs_branch" "${files[@]}"
sd -F "@DOCS_CRATE_NAME@" "$docs_crate_name" "${files[@]}"

echo "=== REMEMBER ==="
echo "- Before first push, go to codecov.io and setup this repo"
echo "- Add CACHIX_AUTH_TOKEN and CODECOV_TOKEN to Actions repo secrets"
echo "- Get the correct link for the codecov badge"

rm "$0"
