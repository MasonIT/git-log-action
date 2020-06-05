#!/bin/bash


if [[ $1 == 'tag' ]]
then
echo "type is $1"
log=$(git log $2.. --pretty=format:'- %cd %an \n  %s\n \n' --date=format:'%Y-%m-%d %H:%M:%S')

elif [[ $1 == 'time' ]]
then
echo "type is $1"
log=$(git log --since "$2" --pretty=format:'- %cd %an \n  %s\n \n' --date=format:'%Y-%m-%d %H:%M:%S')

else
tagName=$(git describe --abbrev=0 --tags)
echo "tag is $tagName"
log=$(git log $tagName.. --pretty=format:'- %cd %an \n  %s\n \n' --date=format:'%Y-%m-%d %H:%M:%S')

fi

echo "Committed log: $log"
echo ::set-output name=log::$log
