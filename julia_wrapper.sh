#!/bin/bash

# Making module / ml available
# ------------------------------------------------------------
export MODULEPATH=/opt/system/modulefiles:/opt/training/modulefiles:/opt/hlrs/non-spack/modulefiles:/opt/hlrs/spack/current/modulefiles
export MODULEPATH="/shared/akad-julia/modules:$MODULEPATH"
source /opt/system/lmod/lmod/init/profile
# ------------------------------------------------------------

# Load julia
ml juliahpc
# ml mpi/openmpi # for MPI

# Pass on all arguments to julia
exec julia "${@}"
