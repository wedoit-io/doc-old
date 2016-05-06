#!/bin/sh

# per ogni sottodirectory...
for car in $(find . -maxdepth 1 -type d | grep 'up_' | xargs); do
  # per ogni tag trovato nel file index della sottocartella in esame
  for tag in $(cat ./up_web_calendari/index.md  | grep -o  'images/.*png'); do
    echo "mv ./$tag $car"
  done
done
