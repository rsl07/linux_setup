
source $HOME/.zrc0
source $HOME/Config/linux/web_bookmark.sh
source $HOME/Config/linux/scope.sh
source $HOME/Config/linux/cdd.sh


############################# ENVIRONMENT ######################################

export DATA

export DATA=$HOME/Data
export CONF=$HOME/Conf
export LINUX=$HOME/Config/linux
export PROJ=$HOME/Projets

export ST_PACK=$HOME/.config/sublime-text/Packages
export ST_USER=$ST_PACK/User

export BIB=$HOME/Litterature/phd/bib
export REDAC=$HOME/Projets/redaction/

export PHD=$HOME/Code/manuscript
export FIG=$HOME/Code/manuscript/figures
export MVP=$HOME/Photos/mvp
export DEFENCE=$HOME/Code/defence

export SSD=/media/$USER/ssd-rsl


# Python Env -------------------------------------------------------------------

conda activate py_lionel

export LIONEL=$HOME/Code/lionel
export CHARLES=$HOME/Code/charles

export PYTHONPATH=$LIONEL:$LIONEL/module:$LIONEL/module/func:$CHARLES:
export PYTHONPATH=$PYTHONPATH:$CHARLES/calib_hm_el_in/


export CONDA_ENV=/home/$USER/Logiciel/anaconda/envs

export PYTHONWARNINGS="ignore"


export PATH="/sbin":"/home/$USER/Code/lionel":$PATH


############################### ALIASES ########################################


# directory navigation ---------------------------------------------------------

alias dsk="cd ~/Bureau; ls"
alias ddl="cd ~/Téléchargements; ls"
alias cod="cd ~/Code; ls"
alias lit="cd ~/Litterature; ls"
alias pro="cd ~/Projets; ls"
alias dat="cd ~/Data; ls"
alias med="cd /media/$USER/; ls"
alias red="cd ~/Projets/redaction; ls"
alias lec="cd ~/Litterature/lecture; ls"
alias cnf="cd ~/Config; ls"
alias pix="cd ~/Photos; ls"
alias jabref='/opt/jabref/bin/JabRef'

alias usb="cd /media/$USER/usb_rsl; ls"
alias ssd=" cd $SSD; ls"


alias li='cd $LIONEL; ls'
alias ch='cd $CHARLES; ls'
alias cad='cd $CHARLES/calib_ad; ls'
alias chm='cd $CHARLES/calib_hm; ls'
alias tl="cd $LIONEL/test; ls"
alias cal='cd $CHARLES/calib_hm_el_in; ls'
alias def='cd $DEFENCE; ls'


alias phd="cd $PHD; ls"
alias mvp="cd ~/Photos/mvp; ls"
alias fig="cd $FIG; ls"


alias bib="cd ~/Litterature/phd/bib; ls"
alias lin='cd $HOME/Config/linux; ls'
alias doc='cd ~/Documents; ls'
alias spk='cd $ST_PACK; ls'
alias sus='cd $ST_USER; ls'
alias prz='cd Presentation; ls'

alias du="du -hsc"


alias manu="xdg-open $PHD/master.pdf"

alias spk='cd $ST_PACK; ls'
alias sus='cd $ST_USER; ls'
alias snp='cd $ST_USER/snippet; ls'

# file manager -----------------------------------------------------------------

alias f=". $HOME/Config/linux/file.sh"
alias d=". $HOME/Config/linux/directory.sh"

alias of=". $HOME/Config/linux/open_file.sh"
alias od=". $HOME/Config/linux/open_dir.sh"

alias wsp="$HOME/Config/linux/workspace.sh"

alias x=". $HOME/Config/linux/execute.sh"

alias xdg="xdg-open"


# applications ----------------------------------------------------------------

alias eyedropper="(flatpak run com.github.finefindus.eyedropper &) && exit"

# command ----------------------------------------------------------------------

alias gh-save_config=". $LINUX/gh-save_config.sh"
alias usb-save_doc=". $LINUX/usb-save_doc.sh"
alias ssd-save=". $LINUX/ssd-save.sh"

alias qpm="cd $PHD
		   git add . ; 
		   git commit -m 'quick push manuscript' ; 
		   git push gitlab_t6e"

alias src='subl $HOME/.zshrc'
alias rc="nano $HOME/.bashrc"
alias ll="ls -l"

alias tr1="tree -L 1"
alias tr2="tree -L 2"
alias tr3="tree -L 3"

alias clm='cd $PHD;
	rm *.fdb_latexmk ;
	rm *.gz *.aux  *.fls *.log *.out *.toc *.bbl *.blg *.lof *.lot; 
	rm *.bak; echo ; ls'

alias lionel="python $HOME/Code/lionel/lionel.py"
alias charles_hm="python -i $HOME/Code/charles/calib_hm/charles_hm.py"
alias charles_ad="python -i $HOME/Code/charles/calib_ad/charles_ad.py"
alias charles="python -i $HOME/Code/charles/calib_hm_el_in/charles.py"

alias manu="xdg-open $PHD/master.pdf"

