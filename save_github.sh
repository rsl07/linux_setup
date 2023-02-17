#!/bin/zsh


# Linux Config Save

echo linux config save :

cd $HOME/config/linux/

rm zshrc.sh zrc0.sh

cp $HOME/.zshrc zshrc.sh
cp $HOME/.zrc0 zrc0.sh

echo .zshrc and .rc0 from home loaded into linux config file 
echo 

git add *
git commit -m "quick_save"
git push github_rsl07


# Subl User Config Save

echo
echo Sublime Text config save :

cd $ST_USER
git add *
git commit -m "quick_save"
git push github_rsl07
