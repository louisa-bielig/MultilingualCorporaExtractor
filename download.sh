#!/bin/bash
##
#
# Passed values from build.sh 
#
##

echo "<div class='language' id='"$5"'>" >> $6

for (( i=$1; i <= $2; i++ ))
do
  echo "<div class='chapter'>" >> $6

  echo node.io -s save "https://www.youversion.com/en-GB/bible/"$4"/"$3"."$i"."$5 | \
    grep div\ class\=\"label \
    | sed -e 's/L<\/span><span class="sc"><span class="content">ord<\/span>/Lord/g' \
    | sed -e 's/\([^0-9]\)<\/span><span class="\(content\)">/\1     /g' >>  $6
  
  node.io -s save "https://www.youversion.com/en-GB/bible/"$4"/"$3"."$i"."$5 | \
    grep div\ class\=\"label \
    | sed -e 's/L<\/span><span class="sc"><span class="content">ord<\/span>/Lord/g' \
    | sed -e 's/\([^0-9]\)<\/span><span class="\(content\)">/\1     /g' >>  $6
    
  echo "</div>" >> $6

  if [ $i -ne $2 ]; 
    then
      echo "Chapter "$i" downloaded. Pausing for 10 seconds."
      sleep 10s #so we don't pound the server
    else
      echo "Chapter "$i" downloaded."
  fi      
done

echo "</div>" >> $6
echo "Finished!"
