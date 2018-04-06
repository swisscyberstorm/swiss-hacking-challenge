#!/bin/bash

for file in `ls ../*`; do
   name=$(echo $file | sed -e 's/^.*\///');
   if [ $name!="thumbnails" ];
   then
     echo  "../${name}" "thumb-$name";
     convert -thumbnail 200 "../$name" "thumb-$name"
   fi
done;
