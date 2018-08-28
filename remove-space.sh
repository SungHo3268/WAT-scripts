#!/bin/sh

cat /dev/stdin | \
  perl -C -pe 'use utf8; s/　/ /g; s/ +/ /g; while( s/([^Ａ-Ｚａ-ｚA-Za-z]|^) ([^Ａ-Ｚａ-ｚA-Za-z]|$)/${1}${2}/g ){}'
