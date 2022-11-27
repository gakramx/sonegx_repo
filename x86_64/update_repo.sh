#!/bin/bash

rm sonegx_repo*

echo "repo-add"
repo-add -n -R sonegx_repo.db.tar.gz *.pkg.tar.zst

sleep 1

rm sonegx_repo.db
rm sonegx_repo.db.sig

rm sonegx_repo.files
rm sonegx_repo.files.sig

mv sonegx_repo.db.tar.gz sonegx_repo.db
mv sonegx_repo.db.tar.gz.sig sonegx_repo.db.sig

mv sonegx_repo.files.tar.gz sonegx_repo.files
mv sonegx_repo.files.tar.gz.sig sonegx_repo.files.sig

echo "####################################"
echo "Repo Updated!!"
echo "####################################"
