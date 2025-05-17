#!/bin/bash
git config --global user.name "Kacper"
git config --global user.email "dsw58484@student.dsw.edu.pl"

git init
git status

git add plik.sh
git commit -m "Dodano plik.sh"
git push --set-upstream orgin main
