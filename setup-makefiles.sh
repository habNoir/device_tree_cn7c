#!/bin/bash
set -e
export DEVICE=CN7c
export VENDOR=tecno
MY_DIR="${BASH_SOURCE%/*}"
if [[ ! -d "${MY_DIR}" ]]; then MY_DIR="${PWD}"; fi
ANDROID_ROOT="${MY_DIR}/../../.."
HELPER="${ANDROID_ROOT}/tools/extract-utils/extract_utils.sh"
source "${HELPER}"
setup_vendor "${DEVICE}" "${VENDOR}" "${ANDROID_ROOT}"
write_headers
write_makefiles "${MY_DIR}/proprietary-files.txt" true
write_footers
