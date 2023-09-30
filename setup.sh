#!/bin/bash
#
#
#
#telechargement depot
git clone git@github.com:Hibbox/my_alias.git ~/my_alias

mv ~/my_alias/* ~/.

rm -rf ~/my_alias

echo " les alias ont bien ete telecharger" 

