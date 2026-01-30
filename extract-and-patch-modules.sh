#!/usr/bin/env bash

for i in vmmon vmnet; do
  rm -rf $i-only
  tar -xvf /usr/lib/vmware/modules/source/$i.tar
done

for i in vmmon vmnet; do
  patch -p1 <patches/$i.patch
done
