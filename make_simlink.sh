#!/bin/bash

files=.*

for file in ${files}
do
   filepath="${PWD}/${file}"
   homefile="${HOME}/${file}"

  test $file == ".git" && continue
  test $file == "." && continue
  test $file == ".." && continue
  test $file == "Brewfile" && continue
  test $file == "README.md" && continue

  if [ ! -e "${homefile}" ]; then
     echo "${file} not exis, make symbolic link to ${homefile}"
     ln -s "${filepath}" "${homefile}"
  else
     echo "${file} exist"
  fi
done


