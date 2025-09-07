#!/bin/bash
#PBS -N diff2dmpi
#PBS -l select=1:node_type=skl:ncpus=4:mpiprocs=4
#PBS -l walltime=00:10:00
#PBS -j oe
#PBS -o job_script.out
#PBS -q smp

WORKDIR=$(pwd)
if [[ -n "${PBS_O_WORKDIR}" ]]; then
    # we're running as a cluster job
    # change to the directory that the job was submitted from ...
    WORKDIR=$PBS_O_WORKDIR
    # ... and load the module(s)
    ml juliahpc
    ml mpi/openmpi
fi
cd $WORKDIR

# OpenMPI settings
export OMPI_MCA_mpi_cuda_support=0
export OMPI_MCA_mca_component_show_load_errors=0

# run MPI code
mpiexecjl -n 4 julia --project diffusion_2d_mpi.jl
# combine the results and visualize them
julia --project visualize_mpi.jl