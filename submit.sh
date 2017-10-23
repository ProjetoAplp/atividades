#!/bin/bash

echo 'Baixando o arquivo para submissao...'
wget http://dirlididi.com/tools/dirlididi.py

echo 'Submetendo codigo'

PROBLEM=$1
TOKEN=$2
TITLE=$3
LANG=$4

case $LANG in
"c") FILE="$TITLE.cpp"; gcc $FILE -o $TITLE ; python dirlididi.py submit $PROBLEM $TOKEN $TITLE $FILE;;
"h") FILE="$TITLE.hs"; ghc $FILE; python dirlididi.py submit $PROBLEM $TOKEN $TITLE $FILE;;
"p") FILE="$TITLE.pl"; python dirlididi.py submit $PROBLEM $TOKEN $FILE;;
*) echo "Invalido";;
esac

echo 'Submissao realizada!'
echo 'Removendo o arquivo de submissao...'

rm dirlididi.py

echo 'Procedimento finalizado com sucesso!'
