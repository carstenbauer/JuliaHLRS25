#!/bin/bash
#PBS -N diff2dmultigpu
#PBS -l select=1:node_type=clx-ai:ncpus=36:mem=100gb:mpiprocs=4
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

# some env vars
export OMPI_MCA_mpi_cuda_support=1
export OMPI_MCA_mca_component_show_load_errors=0
export JULIA_CUDA_MEMORY_POOL=none

# run MPI + CUDA code on 4 GPUs
mpiexecjl -n 4 julia --project diffusion_2d_mpi_gpu.jl
# combine the results and visualize them
julia --project visualize_mpi.jl

# run with higher resolution
mpiexecjl -n 4 julia --project diffusion_2d_mpi_gpu.jl 16384 nosave