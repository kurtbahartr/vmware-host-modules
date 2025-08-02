#!/usr/bin/env bash

for i in vmmon vmnet; do
  rm -rf $i-only
  tar -xvf /usr/lib/vmware/modules/source/$i.tar
done

for i in vmmon vmnet linux6_15 linux6_16; do
  patch -p1 < patches/$i.patch
done
