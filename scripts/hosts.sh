#!/usr/bin/env bash

# Daemon to switch resolution of 'nas.localdomain.lan' host based on SSID

ssid=$(/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I | awk '/ SSID/ {print substr($0, index($0, $2))}')

local_ip='192.168.1.68'
remote_ip='45.19.199.108'
current_ip=$(sed -n -E 's/([[:digit:]]{1,}\.[[:digit:]]{1,}\.[[:digit:]]{1,}\.[[:digit:]]{1,})[[:space:]]{1,}nas.localdomain.lan/\1/p' /etc/hosts)

if [[ "$ssid" =~ "plutocracy" ]] && [[ "$current_ip" == "$remote_ip" ]]; then
  sed -i '' -E "s/[[:digit:]]{1,}\.[[:digit:]]{1,}\.[[:digit:]]{1,}\.[[:digit:]]{1,}([[:space:]]{1,}nas.localdomain.lan)/$local_ip\1/" /etc/hosts
elif [[ "$ssid" != *"plutocracy"* ]] && [[ "$current_ip" == "$local_ip" ]]; then
  sed -i '' -E "s/[[:digit:]]{1,}\.[[:digit:]]{1,}\.[[:digit:]]{1,}\.[[:digit:]]{1,}([[:space:]]{1,}nas.localdomain.lan)/$remote_ip\1/" /etc/hosts
fi
