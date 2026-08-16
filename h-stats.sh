#!/usr/bin/env bash
resp=$(echo -n 'summary' | timeout 5 nc 127.0.0.1 4068 | tr -d '\0')
khs=$(echo "$resp" | grep -oP '(?<=KHS=)[^;]+')
acc=$(echo "$resp" | grep -oP '(?<=ACC=)[^;]+')
rej=$(echo "$resp" | grep -oP '(?<=REJ=)[^;]+')
[[ -z $khs ]] && khs=0
[[ -z $acc ]] && acc=0
[[ -z $rej ]] && rej=0
stats=$(jq -n \
  --argjson hs "[$khs]" \
  --arg algo "civiclight" \
  --argjson ar "[$acc, $rej]" \
  '{hs: $hs, hs_units: "khs", algo: $algo, ar: $ar}')
