#!/bin/bash

init_dir=/etc/init.d
for entry in "$init_dir"/*
do
  filename="${entry##*/}"
  if [ $filename != "README" ]; then
    "$entry" start
  fi
done

/bin/sh
