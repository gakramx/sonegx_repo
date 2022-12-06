#!/bin/bash
#set -e
##################################################################################################################
# Author: Erik Dubois <erik.dubois@gmail.com>
# Maintainer: Akram Abdeslem Chaima <akram@riseup.net>
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################
# change a commit comment
# git commit --amend -m "more info"
# git push --force origin


# checking if I have the latest files from github
echo "Checking for newer files online first"
git pull

cd x86_64
sh ./update_repo.sh
# Below command will backup everything inside the project folder
cd ..
git add --all .

# Give a comment to the commit if you want
#echo "####################################"
#echo "Write your commit comment!"
#echo "####################################"

input="update"

# Committing to the local repository with a message containing the time details and commit text

git commit -m "$input"

# Push the local files to github

if grep -q main .git/config; then
	echo "Using main"
		git push -u origin main
fi

if grep -q master .git/config; then
	echo "Using master"
		git push -u origin master
fi


echo "################################################################"
echo "###################    Git Push Done      ######################"
echo "################################################################"
