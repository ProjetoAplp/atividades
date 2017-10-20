#!/bin/bash

echo 'submetendo codigo'

PROBLEM=$1
TOKEN=$2
TITLE=$3
LANG=$4

echo $PROBLEM $TOKEN $TITLE $LANG

case $LANG in
"c") FILE="$TITLE.cpp"; gcc $FILE -o $TITLE ; python dirlididi.py submit $PROBLEM $TOKEN $TITLE $FILE;;
"h") FILE="$TITLE.hs"; ghc $FILE; python dirlididi.py submit $PROBLEM $TOKEN $TITLE $FILE;;
"p") FILE="$TITLE.pl"; python dirlididi.py submit $PROBLEM $TOKEN $FILE;;
*) echo "Invalido";;
esac