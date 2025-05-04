#! /bin/bash

BOOK="camino";
BOOKNAME="The Way";
MAXPTS=999;
POINT=$((RANDOM % $MAXPTS + 1)); #Generates number from 1 to MAXPTS.
URL="https://escriva.org/api/v1/points/?book_type=$BOOK&number=$POINT";
QUOTE=$(curl -s -X GET "$URL" -H 'accept: application/json' | jq '.results[] | select(.site.name=="English") | .text' | sed 's/<p>/\n/g' | sed 's/<\/p>/\n/g' | sed 's/\"//g')

echo "$BOOKNAME Point No. $POINT:";
echo "https://escriva.org/en/camino/$POINT/";
echo "";
echo $QUOTE;
