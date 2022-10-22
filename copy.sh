#!/bin/bash

curl -fsSL -X POST \
    --url https://paste.ubuntu.com \
    --output /dev/null \
    --write-out "%{url_effective}\n" \
    --data-urlencode "content@${PASTEBIN_CONTENT:-/dev/stdin}" \
    --data "poster=${PASTEBIN_POSTER:-`whoami`@`hostname`}" \
    --data "syntax=${PASTEBIN_SYNTAX:-text}" \
    --data "expiration=${PASTEBIN_EXPIRATION:-day}"
