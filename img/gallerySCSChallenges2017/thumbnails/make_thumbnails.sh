#!/bin/bash

for file in `ls ../*`; do
   name=$(echo $file | sed -e 's/^.*\///');
   #echo  "../gallery/${name}" "thumb-$name";
   convert -thumbnail 200 "../$name" "thumb-$name"
done;
