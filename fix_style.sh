#!/bin/sh

set -e

ROOT_DIR=${1:-"$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"}

cd ${ROOT_DIR}
git ls-files | grep -E "\.h$|\.cpp$" | xargs clang-format -i
