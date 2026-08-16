#!/usr/bin/env bash
cd $CUSTOM_MINER_DIR || exit 1
mkdir -p $(dirname $CUSTOM_LOG_BASENAME)
conf=$(cat $CUSTOM_CONFIG_FILENAME)
./cpuminer $conf >> ${CUSTOM_LOG_BASENAME}.log 2>&1
