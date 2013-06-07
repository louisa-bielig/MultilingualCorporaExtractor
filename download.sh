#!/bin/bash
##
#
# Note: usage = download.sh start_chapter max_chapter book language
#
##

echo "<!DOCTYPE html>" > $3.html
echo "<script src='http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js'></script>" >> $3.html

# 455 is for Inuktitut
if [ $4 = 455 ]; then

  echo "<div id='inuktitut'>" >> $3.html

  for (( i=$1; i <= $2; i++ ))
  do
    echo "<div class='chapter'><span class='label'>$i</span>" >> $3.html
    node.io -s save "https://www.youversion.com/en-GB/bible/"$4"/"$3"."$i".eaib" | grep \;\&\# >>  $3.html 
    echo "</div>" >> $3.html
    echo "Chapter "$i" downloaded. Pausing for 10 seconds."
    sleep 10s #so we don't pound the server
  done
  echo "</div>" >> $3.html
  echo "Finished!"
fi 

#116 is for NLT English
if [ $4 = 116 ]; then

  echo "<div id='inuktitut'>" >> $3.html

  for (( i=$1; i <= $2; i++ ))
  do
    echo "<div class='chapter'><span class='label'>$i</span>" >> $3.html
    node.io -s save "https://www.youversion.com/en-GB/bible/"$4"/"$3"."$i".nlt" | grep div\ class\=\"label >> $3.html 
    echo "</div>" >> $3.html
    echo "Chapter "$i" downloaded. Pausing for 10 seconds."
    sleep 10s #so we don't pound the server
  done
  echo "</div>" >> $3.html
  echo "Finished!"
fi 
