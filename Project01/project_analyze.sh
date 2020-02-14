#!/bin/bash

echo "Welcome to the world of BASH"
echo "Let's enjoy some new fratures ceated. Before that! What's your name?"
read name 
echo "Welcome $name. Let's get started!"
echo "Feature 1 ~ Mandatory feature"
echo "There are 3 features waiting for you ! Press a number from 2 to 4 to access them"
echo " 2 - Feature FIXME Log"
echo " 3 - Feature Size List"
echo " 4 - Feature File Type Count"
read featurenumber

if [ $featurenumber -eq 3 ] ; then
  echo "Feature 3:"
  echo "This feature prints all the files in the repo along with their sizes"
  ls -lS -R ../../CS1XA3/* | grep '^-' | sort -k 5 -rn | awk '{print $9" - " $5 " bytes"}' 
fi

if [ $featurenumber -eq 2 ] ; then
  echo "Feature 2:"
  echo "Lets's find all the files in the repo that has #FIXME in the last line"
  if [ -f fixme.log ] ; then
      rm fixme.log
  fi
  for file in $(find .. -type f) ; do
     if [ $(tail -1 "$file" | egrep "*#FIXME" | sed 's/ //g') ] ; then
           echo "$file"$'\n' >> fixme.log
     fi
   done
fi

if [ $featurenumber -eq 4 ] ; then
  echo "Feature 4:"
  echo "Lets find the number of files in the repo with a specific extension!"
  echo "Enter an extension :"
  read ext
  C=$(find . -name "*.$ext" | wc -l)
  echo "The number of files with the extension .$ext : $C"
fi

