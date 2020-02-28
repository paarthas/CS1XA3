#!/bin/bash

echo "Welcome to the world of BASH"
echo "Let's enjoy some new fratures ceated. Before that! What's your name?"
read name
echo "Welcome $name. Let's get started!"
echo "Feature 1 ~ Mandatory feature"
echo "There are features waiting for you ! Press a number from 2 to 10 to access them"
echo " 2 - Feature FIXME Log"
echo " 3 - Feature Size List"
echo " 4 - Feature File Type Count"
echo " 5 - Feature Checkout Latest Merge"
echo " 6 - Feature Find Tag"
echo " 7 - Feature Backup and Delete / Restore"
echo " 8 - Custom Feature 1"
echo " 9 - Custom Feature 2"
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
  C=$(find .. -name "*.$ext" | wc -l)
  echo "The number of files with the extension .$ext : $C"
fi

if [ $featurenumber -eq 5 ] ; then
    git log -i --grep=merge > merge.txt
    cut -c 8-48 merge.txt > mergenumber.txt
    git checkout $(head -n 1 mergenumber.txt)
fi

if [ $featurenumber -eq 6 ] ; then
  echo "Enter a TAG"
  read tag
  if [ ! ../../CS1XA3/Project01/$tag.log ] ; then
     touch ../../CS1XA3/Project01/$tag.log
  else
    echo "" > ../../CS1XA3/Project01/$tag.log
  fi
  for file in $(find .. -type f -name "*.py") ; do
      echo $(grep -E '^#' $file | grep "$tag") >>  grepp.txt
  done
  sed '/^$/d' grepp.txt >> ../../CS1XA3/Project01/$tag.log
  rm grepp.txt
fi

if [ $featurenumber -eq 7 ] ; then
  echo "Lets do some Backup and Restore"
  echo "Type 'B' to BackUp or 'R' to Restore" 
  read order
  if [ $order == "B" ] ; then
    if [ ! -d ../../CS1XA3/Project01/backup ] ; then
      mkdir ../../CS1XA3/Project01/backup
    else
      rm -r -f ../../CS1XA3/Project01/backup/*
    fi
    touch ../../CS1XA3/Project01/backup/restore.log
    find .. -type f -name "*.tmp" -exec readlink -f {} \; > ../../CS1XA3/Project01/backup/restore.log
    find .. -type f -name "*.tmp" -exec mv {} ../../CS1XA3/Project01/backup \;
  fi
  if [ $order == "R" ] ; then
   if [ ! -f ../../CS1XA3/Project01/backup/restore.log ] ; then
     echo "Restoration not required beacuse the files are not relocated from the original location"
   else
     for path in $(cat ../../CS1XA3/Project01/backup/restore.log) ; do
       filename=$(echo $(basename "$path"))
       mv ../../CS1XA3/Project01/backup/$filename $path
    done
   fi
  fi
fi

if [ $featurenumber -eq 8 ] ; then
  echo "Type a word to look for"
  read word
  reverse=$(echo $word | rev)
  grep -r -l --exclude='project_analyze.sh' --exclude='README.md' "$word" ../../CS1XA3/*
  if [ $? -eq 0 ] ; then
     for file in $(grep -l -r --exclude='project_analyze.sh' --exclude='README.md' "$word" ../../CS1XA3/*) ; do
        sed -i "/$word/d" $file
     done
  else
     touch $reverse
  fi
fi

if [ $featurenumber -eq 9 ] ; then
  echo "Type the name of the directory to be created"
  read word
  mkdir ../../CS1XA3/Project01/$word
  echo "Enter an extension :"
  read ext
  if [ $(find .. -name "*.$ext" -type f | wc -l) -gt 0 ] ; then
    for file in $(find .. -name "*.$ext" -type f ! -readable) ; do
      chmod +r $file
      cp "$file" ../../CS1XA3/Project01/$word
    done
  else
    echo "No file found with given extention"
  fi
fi
