#!/bin/bash
rm sonegx_repo*
echo "repo-add"
repo-add -n -R sonegx_repo.db.tar.gz *.pkg.tar.zst
sleep 5
echo "####################################"
echo "Repo Updated!!"
echo "####################################"
