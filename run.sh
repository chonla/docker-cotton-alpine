#!/usr/bin/env ash

set -e

DEFAULT_URL="http://localhost:8080"
DEFAULT_TEST_PATH="."

URL=${URL:-$DEFAULT_URL}
TEST=${TEST:-$DEFAULT_TEST_PATH}

echo ${TEST}

LOCALHOST=`ip -4 addr show scope global dev eth0 | grep inet | awk '{print \$2}' | cut -d / -f 1`

URL="${URL/localhost/$LOCALHOST}"

cotton -u ${URL} ${TEST}