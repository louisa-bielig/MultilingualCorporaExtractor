#!/bin/bash
##
# 
# This helper script takes in the values from createdata.sh 
# automatically. It then formats and downloads the proper
# contents into an output HTML file for each language.
#
##

startchapter=$1           # chapter number to start at
endchapter=$2             # chapter number to end at
book=$3                   # book of the bible to download the chapters from
numeric_language_code=$4  # youversion.com numeric code for the bible version
text_language_code=$5     # youversion.com text code for the bible version
output_file=$6            # the file that collects all the downloaded information

# Add the language ID to the download capture file.
echo "<div class='language' id='"$text_language_code"'>" >> $output_file

# looping the process of downloading. 
# The chapters you choose will be downloaded one by one
# with a pause between each to not overload the webserver.

for (( i=$startchapter; i <=$endchapter; i++ ))
do
  echo "<div class='chapter'>" >> $output_file

  echo ./node_modules/node.io/bin/node.io -s save "https://www.youversion.com/en-GB/bible/"$numeric_language_code"/"$book"."$i"."$text_language_code | \
    grep div\ class\=\"label \
    | sed -e 's/L<\/span><span class="sc"><span class="content">ord<\/span>/Lord/g' \
    | sed -e 's/\([^0-9]\)<\/span><span class="\(content\)">/\1     /g' >>  $output_file

# the bible text had LORD in small caps; the code looks for the html <span> tag, 
# hence we need to replace small caps LORD with Lord    
  ./node_modules/node.io/bin/node.io -s save "https://www.youversion.com/en-GB/bible/"$numeric_language_code"/"$book"."$i"."$text_language_code | \
    grep div\ class\=\"label \
    | sed -e 's/L<\/span><span class="sc"><span class="content">ord<\/span>/Lord/g' \
    | sed -e 's/\([^0-9]\)<\/span><span class="\(content\)">/\1     /g' >>  $output_file
    
  echo "</div>" >> $output_file

# This checks if the last chapter is being downloaded. If yes, 
# we do not need to pause.
  if [ $i -ne $endchapter ]; 
    then
      echo "Chapter "$i" downloaded. Pausing for 10 seconds."
      sleep 10s #so we don't pound the server
    else
      echo "Chapter "$i" downloaded."
  fi      
done

# Close the section for the current language inside the output file.
echo "</div>" >> $output_file
echo "Finished!"
