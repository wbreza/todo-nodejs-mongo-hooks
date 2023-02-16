#!/bin/bash
set -euo pipefail

PARENT_PATH=$(
    cd "$(dirname "${BASH_SOURCE[0]}")"
    pwd -P
)

cd ../tests

npm i && npx playwright install
npx playwright test