#!/bin/bash
##
#
# Asks user for information from youversion.com such as
# name of book of the bible, starting and ending chapters
# of that book, and the version/language numeric code
# and abbreviation. (1 and kjv for King James Version)
#
##

echo "Enter the three character code for the youversion.com Bible book"
echo -n "e.g. gen for Genesis and press [ENTER]: "
read book
echo
echo -n "Enter the starting chapter number for $book and press [ENTER]: "
read startchapter
echo
echo -n "Enter the ending chapter number for $book and press [ENTER]: "
read endchapter

FILETIME=`date +"%s"`
OUTFILE="$book-$startchapter-$endchapter-$FILETIME.html"

echo "<!DOCTYPE html>" > $OUTFILE

while true; do
  echo -n "Enter the language number code and press [ENTER]: "
  read langnumber
  if [ $langnumber == "exit" ]; 
    then 
      echo "<script src='http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js'></script>" >> $OUTFILE
      echo "<script src='alignChaptersAndVerses.js'></script>" >> $OUTFILE
      google-chrome $OUTFILE &
      exit 0
    else
      echo -n "Enter the language text code and press [ENTER]: "
      read langcode
      echo "Working... "
      echo  $startchapter $endchapter $book $langnumber $langcode $OUTFILE
      ./download.sh $startchapter $endchapter $book $langnumber $langcode $OUTFILE
  fi
done
