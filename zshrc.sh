
source ~/.zrc0

source $HOME/Config/linux/web_bookmark.sh
source $HOME/Config/linux/scope.sh
source $HOME/Config/linux/cdd.sh
source $HOME/.ls_colors

###############################################################################
# DATA ARCHITECTURE                            
###############################################################################

export DATA=$HOME/Data
export CONF=$HOME/Conf
export LINUX=$HOME/Config/linux
export MVP=$HOME/Images/mvp
export PROJ=$HOME/Projets

export MNEMO=/data/rd/users/D51680

export USB=/media/d51680/usb-rsl
export SSD=/media/d51680/ssd-rsl


alias dsk="cd ~/Bureau; ls"
alias ddl="cd ~/Téléchargements; ls"
alias cod="cd ~/Code; ls "
alias lit="cd ~/Litterature; ls"
alias pro="cd ~/Projets; ls"
alias dat="cd ~/Data; ls"
alias med="cd /media/d51680/; ls"
alias red="cd ~/Projets/redaction; ls"
alias lec="cd ~/Litterature/lecture; ls"
alias cnf="cd ~/Config; ls "
alias cnt="cd ~/Conteneurs; ls "
alias pix="cd ~/Images; ls"
alias prz='cd ~/Presentation; ls'
alias usb='cd $USB; ls'
alias ssd='cd $SSD; ls'
alias lin='cd ~/Config/linux; ls'
alias doc='cd ~/Documents; ls'
alias mvp="cd ~/Images/mvp; ls"
alias ca="cd ~/dev/codeaster/src"

alias tr1="tree -L 1"
alias tr2="tree -L 2"
alias tr3="tree -L 3"

alias ll="ls -rtlh"
alias du="du -hc"
alias xc="xclip -selection clipboard"
alias xdg="xdg-open"
alias c='clear'


# -----------------------------------------------------------------------------
# Save

alias save_github_config=". $LINUX/gh-save_config.sh"
alias save_ssd_folders=". $LINUX/ssd-save.sh"
alias save_mnemo=". $LINUX/mnemo-save.sh"

alias usb-save_doc=". $LINUX/usb-save_doc.sh"


# -----------------------------------------------------------------------------
# Navigation

alias f=". $HOME/Config/linux/file.sh"
alias d=". $HOME/Config/linux/directory.sh"
alias x=". $HOME/Config/linux/execute.sh"

alias of=". $HOME/Config/linux/open_file.sh"
alias od=". $HOME/Config/linux/open_dir.sh"

alias fa=". $HOME/Config/linux/file_archived.sh"
alias da=". $HOME/Config/linux/directory_archived.sh"
alias ofa=". $HOME/Config/linux/open_file_archived.sh"
alias oda=". $HOME/Config/linux/open_dir_archived.sh"

alias wsp="$HOME/Config/linux/workspace.sh"

alias clp='rm $HOME/.pid_*'

###############################################################################
# AC                            
###############################################################################
 
export AC_CHB="/data/rd/work/projets.002/cac.045/BIBLIOTHEQUE/4.ACCIDENTS/4.IFS/Prestations/2023_postdoc_IMSIA_Charbel_Habchi"
export AC_RSL="/home/d51680/Projets/ac3d"

alias mvpa="eog $MVP/ac/* & disown"


alias asc="cd $AC_RSL;ls"=
alias pac="rsync -av $AC_RSL/ $AC_CHB/rsl/"


###############################################################################
# AC                            
###############################################################################

export DIR_GEVIBUS="$HOME/dev/smeca/salome-gevibus"

alias gvb='cd $DIR_GEVIBUS'


###############################################################################
# SUBLIME                            
###############################################################################

export ST_PACK=$HOME/.config/sublime-text/Packages
export ST_USER=$ST_PACK/User

alias spk='cd $ST_PACK; ls'
alias sus='cd $ST_USER; ls'
alias snp='cd $ST_USER/snippet; ls'




###############################################################################
# CRONOS                            
###############################################################################

export CR_HOME=d51680@cronos.hpc.edf.fr:/home/d51680
export CR_WORK=d51680@cronos.hpc.edf.fr:/work
export CR_SCRATCH=d51680@cronos.hpc.edf.fr:/scratch

export CR_WORK_POWX=$CR_WORK/rd/powerx
export CR_CALIB=d51680@cronos.hpc.edf.fr:/scratch/rd/powerx/CHARLES
export CR_TDMS=d51680@cronos.hpc.edf.fr:/scratch/rd/powerx/CHARLES/tdms

export CR_SCRATCH_POWX=$CR_SCRATCH/rd/powerx
export CR_SCRATCH_USER=$CR_SCRATCH/users/d51680


alias qcr='$CHARLES/data_assembly/push_cronos.sh'
alias cr='ssh cronos'


###############################################################################
# PHD                            
###############################################################################

alias mvphd="eog $MVP/phd/* & disown"

# -----------------------------------------------------------------------------
# lionel

export LIONEL=$HOME/Code/lionel


alias li='cd $LIONEL; ls'
alias tl="cd $LIONEL/test; ls"


alias lionel="$HOME/Code/lionel/lionel.py"


# -----------------------------------------------------------------------------
# charles

export CHARLES=$HOME/Code/charles
export CHARLESX=$HOME/Code/charlesX


alias ch='cd $CHARLES; ls'
alias cad='cd $CHARLES/calib_ad; ls'
alias chm='cd $CHARLES/calib_hm; ls'k
alias cal='cd $CHARLES/calib_hm_el_in; ls'


alias charles_hm="$HOME/Code/charles/calib_hm/charles_hm.py"
alias charles_ad="$HOME/Code/charles/calib_ad/charles_ad.py"
alias charles="$HOME/Code/charles/calib_hm_el_in/charles.py"

alias extract="$CHARLES/data_assembly/17-extraction.sh"


# charles bl7 executed 
alias cx='cd $CHARLESX; ls' 
alias cxd='cd $CHARLESX/charles/data_processing/     ; ls'
alias cxdw='cd $CHARLESX/charles/data_processing/wdir; ls'
alias cxs='cd $CHARLESX/data_site; ls'

alias rcx='$CHARLESX/charles/data_processing/0_run.sh'
alias ccx='$CHARLESX/charles/data_processing/0_clear-database.py'

# -----------------------------------------------------------------------------
# Manuscrit 

export BIB=$HOME/Litterature/phd/bib
export PHD=$HOME/Code/manuscript
export FIG=$HOME/Code/manuscript/figures

export REDAC=$HOME/Projets/redaction/


alias phd="cd $PHD; ls"
alias fig="cd $FIG; ls"
alias bib="cd ~/Litterature/phd/bib; ls"



alias clm='cd $PHD;
	rm *.fdb_latexmk ;
	rm *.gz; rm *.aux; rm *.fls; rm *.log; rm *.out; rm *.toc; rm *.bbl
	rm *.blg; rm *.lof; rm *.lot;
	rm *.glo; rm *.glsdefs; rm *.ist; 
	rm *.bak;
	echo ; ls'

alias manu="xdg-open $PHD/master.pdf"

alias qpm="cd $PHD
		   git add . ; 
		   git commit -m 'quick push manuscript' ; 
		   git push gitlab_t6e"

alias push-phd-usb="cd $PHD
				   git add . ; 
				   git commit -m 'usb push manuscript' ; 
				   git push usb"

alias ssd-pphd="cd $PHD
				git add . ; 
				git commit -m 'usb push manuscript' ; 
				git push ssd"



# -----------------------------------------------------------------------------
# Site data HPC analysis

export TDMS=/home/d51680/Projets/site_analysis/tdms
export BLCH=/home/d51680/Data/blyth_ch4
export MVPS=$MVP/site_analysis

alias mvps="eog $MVPS/* & disown"

alias dlo='cd /home/d51680/Projets/site_analysis/data_load;ls'
alias dst='cd /home/d51680/Projets/site_analysis/data_struct;ls'
alias dca='cd /home/d51680/Projets/site_analysis/data_calib;ls'

alias tdms='cd /home/d51680/Projets/site_analysis/tdms;ls'

alias chd='cd /home/d51680/Code/charles/data_assembly; ls'
alias bl='cd /home/d51680/Data/blyth'
alias bl2='cd $BLCH2; ls'
alias bl3='cd /home/d51680/Data/blyth_ch3/'
alias bl4='cd /home/d51680/Data/blyth_ch4/'


alias seq='chd;./seq_visu.py 20180713_023000'
alias nfe='chd;./24-nf_evolution.py'
alias dme='chd;./26-Dmean_evolution.py'



# -----------------------------------------------------------------------------
# Blyth Site Calibration

export CH_SITECAL=/home/d51680/Code/charles/calib_blyth
export MVPC=$MVP/site_calibration
export MVPD=$MVP/site_defect
export PR_SITECAL=/home/d51680/Projets/site_calibration

alias prc='cd $PR_SITECAL'
alias mvpc="eog $MVPC/*.png & disown"
alias mvpd="eog $MVPD/*.png & disown"


alias dwgs="evince /home/d51680/Litterature/eolien/blyth/sensors/A2-07-Instrumentation-Installation-as-built.pdf & disown"
alias dwgf="evince /home/d51680/Litterature/eolien/blyth/foundation/BOD-107-05-BAM-DWG-00071_Drawing-GENERAL_ARRANGEMENT_LOCATION_A207.pdf & disown"
alias ila="evince /home/d51680/Litterature/eolien/blyth/study/BOD-107-05-BAM-REP-00008-A-04_Report-Integrated_Load_Analysis.pdf & disown"

alias chb='cd $CH_SITECAL;ls'

alias charles=$CH_SITECAL/charles.py
alias rsa=$CH_SITECAL/result_aero.py
alias rsh=$CH_SITECAL/result_hydro.py

alias sens=/home/d51680/Projets/sensitivity_analysis/sensitivity.py


###############################################################################
# ASTER / SALOME_MECA 
###############################################################################

export __NV_PRIME_RENDER_OFFLOAD=1
export __GLX_VENDOR_LIBRARY_NAME=nvidia



source $HOME/Config/aster/compile.sh
source $HOME/Config/aster/run.sh


# -----------------------------------------------------------------------------
# Environnement SALOME MECA

alias salome-meca_gui="scibian-nvidia /home/d51680/Conteneurs/smeca2023.1.0"

alias salome-meca_shell="scibian-nvidia /home/d51680/Conteneurs/smeca2023.1.0 --shell"

alias sms="salome-meca_shell"
alias smg="salome-meca_gui"


# -----------------------------------------------------------------------------
# Extract array from pickle

alias read_pickle="/home/d51680/Config/python/read_pickle.py "




###############################################################################
# GEVIBUS                            
###############################################################################

alias gevibus_local="~/Config/gevibus/local.sh"


###############################################################################
# APPLICATION 
###############################################################################

alias pandoc="pandoc -f markdown --pdf-engine=xelatex -V 'monofont:DejaVu Sans Mono'"

alias jabref='/opt/jabref/bin/JabRef & disown'

alias form="google-chrome --new-window 'https://forms.office.com/Pages/DesignPageV2.aspx' & disown"

###############################################################################
# PATH                             
###############################################################################

# Not activated in singularity
if [ -z "${SINGULARITY_CONTAINER}" ]; then
    
	conda activate py_lionel

	# Where import look for module (check with sys.path)
	export PYTHONPATH=$LIONEL:$LIONEL/module:$LIONEL/module/func
	export PYTHONPATH=$PYTHONPATH:$CHARLES:$CHARLES/calib_hm_el_in/
	export CONDA_ENV=/home/d51680/Logiciel/anaconda/envs
	export PYTHONWARNINGS="ignore"
	export PY_LIONEL="/home/d51680/Logiciel/anaconda3/envs/py_lionel"
	export PATH="/usr/bin":"/sbin":$LIONEL:$CHARLES:$LIONEL/module/func:$PATH

	alias py_lionel="$PY_LIONEL/bin/python"

fi
