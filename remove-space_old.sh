#!/bin/sh

cat /dev/stdin | \
  perl -Mencoding=utf8 -pe 's/　/ /g; s/ +/ /g; while( s/([^Ａ-Ｚａ-ｚA-Za-z]|^) ([^Ａ-Ｚａ-ｚA-Za-z]|$)/${1}${2}/g ){}'
