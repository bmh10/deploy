#!/bin/bash

read -p "Please enter tag name: " tagName

rm -rf tmpClone
git clone https://github.com/bmh10/Pong.git tmpClone
cd tmpClone
git tag -a $tagName -m "$tagName"
git push --tags

# Also clone sql project and tag

read -p "Tagging complete. Run Ant task, apply any DB changes, then press [ENTER]"

for n in 0 1
do
  echo $n

# Shutdown server
# Create backup directory - ssh user@server 'mkdir ...'
# SCP files
# Startup server
  sleep 10
done

# Finally perform healtcheck on servers

cd ..
rm -rf tmpClone
