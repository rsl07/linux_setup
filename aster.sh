#!/bin/bash

# Run export file
function aster() {

/home/d51680/dev/codeaster/install/std/bin/run_aster $1

}


# Run export file in mpi
function aster_mpi() {

/home/d51680/dev/codeaster/install/mpi/bin/run_aster $1

}



function compile_aster() {

cd dev/codeaster/src

/home/d51680/dev/codeaster/src/waf_std configure
/home/d51680/dev/codeaster/src/waf_std install

}



function compile_aster_mpi() {

cd dev/codeaster/src
 
/home/d51680/dev/codeaster/src/waf configure
/home/d51680/dev/codeaster/src/waf install

}