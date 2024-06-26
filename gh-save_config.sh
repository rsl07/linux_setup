#!/bin/zsh


# Linux Config Save

# Proxy for crontab 
export PROXY="http://vip-users.proxy.edf.fr:3131"
export http_proxy=$PROXY
export https_proxy=$PROXY
export HTTP_PROXY=$PROXY
export HTTPS_PROXY=$PROXY
export ftp_proxy=$PROXY
export FTP_PROXY=$PROXY
export no_proxy="localhost,edf.fr"

echo linux config save :

cd $HOME/Config/linux/

rm zshrc.sh zrc0.sh

cp $HOME/.zshrc zshrc.sh
cp $HOME/.zrc0 zrc0.sh

echo .zshrc and .rc0 from home loaded into linux config file 
echo 

git add .
git commit -m "quick_save"
git push gh-rsl


# Subl User Config Save

echo
echo Sublime Text config save :

cd $ST_USER
git add .
git commit -m "quick_save"
git push gh-rsl


cd $LIB
git add .
git commit -m "quick_save"
git push github