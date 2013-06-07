#!/bin/bash
##
#
# Note: usage = download.sh start_chapter max_chapter book language
#
##

# 455 is for Inuktitut
if [ $4 = 455 ]; then

  for (( i=$1; i <= $2; i++ ))
  do
    node.io -s save "https://www.youversion.com/en-GB/bible/"$4"/"$3"."$i".eaib" | grep \;\&\# >> $3.html 
    echo "Chapter "$i" downloaded. Pausing for 10 seconds."
    sleep 10s #so we don't pound the server
  done
  echo "Finished!"
fi 

#116 is for NLT English
if [ $4 = 116 ]; then

  for (( i=$1; i <= $2; i++ ))
  do
    node.io -s save "https://www.youversion.com/en-GB/bible/"$4"/"$3"."$i".nlt" | grep div\ class\=\"label >> $3.html 
    echo "Chapter "$i" downloaded. Pausing for 10 seconds."
    sleep 10s #so we don't pound the server
  done
  echo "Finished!"
fi 
