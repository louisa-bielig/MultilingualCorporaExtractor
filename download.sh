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
    sleep 10 #so we don't pound the server
  done
fi 

#116 is for NLT English
if [ $4 = 116 ]; then

  for (( i=$1; i <= $2; i++ ))
  do
    node.io -s save "https://www.youversion.com/en-GB/bible/"$4"/"$3"."$i".nlt" | grep \;\&\# >> $3.html 
    sleep 10 #so we don't pound the server
  done
fi 
