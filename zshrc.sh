
source ~/.zrc0
source $HOME/Config/linux/web_bookmark.sh
source $HOME/Config/linux/scope.sh
source $HOME/Config/linux/cdd.sh


############################# ENVIRONMENT ######################################


export DATA=$HOME/Data
export CONF=$HOME/Conf
export LINUX=$HOME/Config/linux

export ST_PACK=$HOME/.config/sublime-text-3/Packages
export ST_USER=$ST_PACK/User

export BIB=$HOME/Litterature/phd/bib
export REDAC=$HOME/Projets/redaction/

export PHD=$HOME/Code/manuscript
export FIG=$HOME/Code/manuscript/figures
export MVP=$HOME/Photos/mvp

# Python Env -------------------------------------------------------------------

conda activate py_lionel

export LIONEL=$HOME/Code/lionel
export CHARLES=$HOME/Code/charles

export PYTHON_PATH=$LIONEL:$LIONEL/test:$LIONEL/module:$PYTHON_PATH
export PYTHON_PATH=$LIONEL/module/func:$CHARLES:$PYTHONPATH

export CONDA_ENV=/home/d51680/Logiciel/anaconda/envs

export PYTHONWARNINGS="ignore"


export PATH="/sbin":"/home/d51680/Code/lionel":$PATH


############################### ALIASES ########################################


# directory navigation ---------------------------------------------------------

alias dsk="cd ~/Bureau"
alias ddl="cd ~/Téléchargements"
alias cod="cd ~/Code"
alias lit="cd ~/Litterature"
alias pro="cd ~/Projet"
alias dat="cd ~/Data"
alias med="cd /media/d51680/"
alias usb="cd /media/d51680/usb_rsl"
alias red="cd ~/Projets/redaction"
alias lec="cd ~/Litterature/lecture"
alias cnf="cd ~/Config"
alias pix="cd ~/Photos"

alias li='cd $LIONEL'
alias ch='cd $CHARLES'
alias tl="cd $LIONEL/test"

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

# file manager -----------------------------------------------------------------

alias f=". $HOME/Config/linux/file.sh"
alias d=". $HOME/Config/linux/directory.sh"

alias of=". $HOME/Config/linux/open_file.sh"
alias od=". $HOME/Config/linux/open_dir.sh"

alias wsp="$HOME/Config/linux/workspace.sh"

alias x=". $HOME/Config/linux/execute.sh"

alias xdg="xdg-open"

# command ----------------------------------------------------------------------

alias gh-save_config=". $LINUX/gh-save_config.sh"
alias usb-save_doc=". $LINUX/usb-save_doc.sh"

alias src='subl $HOME/.zshrc'
alias rc="nano $HOME/.bashrc"

alias tr1="tree -L 1";alias tr2="tree -L 2";alias tr3="tree -L 3"

alias clm='cd $PHD;
	rm *.gz *.aux *.fdb_latexmk *.fls *.log *.out *.toc *.bbl *.blg *.lof *.lot; 
	rm *.bak; echo ; ls'

alias lionel="python $HOME/Code/lionel/lionel.py"



