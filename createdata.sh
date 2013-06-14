#!/bin/bash
##
#
# Asks user for information from youversion.com such as
# name of a book of the bible, starting and ending chapters
# of that book, and the version/language numeric code
# and abbreviation. (1 and kjv for King James Version)
#
##

# Ask user for input and save them into variables.
echo "Enter the three character code for the youversion.com Bible book"
echo -n "(e.g. gen for Genesis) and press [ENTER]: "
read book
echo
echo -n "Enter the starting chapter number for $book and press [ENTER]: "
read startchapter
echo
echo -n "Enter the ending chapter number for $book and press [ENTER]: "
read endchapter

# The file name contains a unique timestamp value.
FILETIME=`date +"%s"`
OUTFILE="$book-$startchapter-$endchapter-$FILETIME.html"

# Creates a blank HTML file and fills it with information.
echo "<!DOCTYPE html><head><link rel='stylesheet' type='text/css' href='style.css' /></head><body id='"$book"' >" > $OUTFILE

# Main work loop.
# The user provides language numbers and codes. This loop makes sure 
# that the same chapters and book are downloaded for those languages.
# To finish, the user must type 'exit'.
while true; do
  echo -n "Enter the language number code and press [ENTER]: "
  read langnumber
  if [ $langnumber == "exit" ]; 
    then 

      # If the user is finished and has typed 'exit', we will close the output file, 
      # add links to javascript files that will process the data, and finally,
      # open the file in the user's web browser.
      echo "<script src='http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js'></script>" >> $OUTFILE
      echo "<script src='xml2json.js'></script>" >> $OUTFILE
      echo "<script src='alignChaptersAndVerses.js'></script></body>" >> $OUTFILE

      # check for Mac or Linux and open the proper version of Chrome
      if [ `uname` == "Darwin" ];
        then
	        open -a "Google Chrome" $OUTFILE
        else
          google-chrome $OUTFILE &
      fi

      exit 0
    else
      echo -n "Enter the language text code and press [ENTER]: "
      read langcode
      echo "Working... "
      echo  $startchapter $endchapter $book $langnumber $langcode $OUTFILE

      # Now we will call download.sh with all of the user's values
      ./download.sh $startchapter $endchapter $book $langnumber $langcode $OUTFILE
  fi
done
