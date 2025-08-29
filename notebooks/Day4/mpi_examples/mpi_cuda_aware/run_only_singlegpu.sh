# uncomment this if you are on cluster gpu node
ml juliahpc
ml mpi/openmpi
export OMPI_MCA_mpi_cuda_support=1
export OMPI_MCA_mca_component_show_load_errors=0
export JULIA_CUDA_MEMORY_POOL=none

mpiexecjl --project -n 4 julia 1_cudampi_singlegpu.jl
