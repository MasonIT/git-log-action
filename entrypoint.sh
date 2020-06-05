#!/bin/bash

if [[$3 != '']]
then
path=$3

else
path=update.log

if

if [[ $1 == 'tag' ]]
then
echo "type is $1"
git log $2.. --pretty=format:'- %cd %an \n  %s\n \n' --date=format:'%Y-%m-%d %H:%M:%S' > path

elif [[ $1 == 'time' ]]
then
echo "type is $1"
git log --since "$2" --pretty=format:'- %cd %an \n  %s\n \n' --date=format:'%Y-%m-%d %H:%M:%S' > path

else
tagName=$(git describe --abbrev=0 --tags)
echo "tag is $tagName"
git log $tagName.. --pretty=format:'- %cd %an \n  %s\n \n' --date=format:'%Y-%m-%d %H:%M:%S' > path

fi

# echo "Committed log: $log"
# echo ::set-output name=log::$log
