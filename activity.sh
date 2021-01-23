#!/bin/bash

##
# Create a temp commits direcotry
##
if [[ ! -d .commits ]] ; then
    mkdir -p .commits
fi

##
# Create commits for the past 365 days
##
for day in {1..365} ; do
    day=$(date --date="-${day} day")
    echo "Creating commits for ${day}"
    commits=$(( ( RANDOM % 6 )  + 2 ))
    echo "Creating ${commits} commits"
    for ((i=1;i<=${commits};i++)); do
        content=$(date -d "$day" +"%s")
        mkdir -p .commits/${content}
        echo ${content}-${i} >> .commits/${content}/${i}.log
        git add .
        git commit -m "Commit number ${content}-${i}"
        git commit --amend --no-edit --date "${day}"
    done
done

echo "Generating commits completed..."
echo "To push your commits run:"
echo "git push origin -f your_branch_name"
