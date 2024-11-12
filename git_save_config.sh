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


###############################################################################
# GitHub Save
###############################################################################


echo linux config save :

cd /home/d51680/Config/linux/ # _______________________________________________

git add .
git commit -m "git_save_config.sh"
git push github


cd /home/d51680/Config/linux/ # _______________________________________________


git add .
git commit -m "git_save_config.sh"
git push github

cd /home/d51680/.config/sublime-text/Packages/User # __________________________

git add .
git commit -m "git_save_config.sh"
git push github


cd /home/d51680/Code/lib # ____________________________________________________

git add .
git commit -m "git_save_config.sh"
git push github


###############################################################################
# GitLab Save
###############################################################################


echo gitlab save config and lib folder


cd /home/d51680/Config/ # _____________________________________________________

cp /home/d51680/.zshrc /home/d51680/Config/user/.zshrc
cp /home/d51680/.zrc0 /home/d51680/Config/user/.zrc0
cp /home/d51680/.bashrc /home/d51680/Config/user/.bashrc
cp /home/d51680/.condarc /home/d51680/Config/user/.condarc
cp /home/d51680/.ls_colors /home/d51680/Config/user/.ls_colors

git add .
git commit -m "git_save_config.sh"
git push gitlab


cd /home/d51680/Code/lib # _____________________________________________________

git add .
git commit -m "git_save_config.sh"
git push gitlab
 




