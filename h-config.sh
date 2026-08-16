#!/usr/bin/env bash
conf="-a ${CUSTOM_ALGO:-civiclight} -o ${CUSTOM_URL} -u ${CUSTOM_TEMPLATE} -p ${CUSTOM_PASS:-x} -b 127.0.0.1:4068 ${CUSTOM_USER_CONFIG}"
echo "$conf" > $CUSTOM_CONFIG_FILENAME
