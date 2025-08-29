# uncomment this if you are on cluster gpu node
ml juliahpc
ml mpi/openmpi
export OMPI_MCA_mpi_cuda_support=1
export OMPI_MCA_mca_component_show_load_errors=0
export JULIA_CUDA_MEMORY_POOL=none

for f in *.jl
do
    echo "Running $f"
    mpiexecjl --project -n 4 julia "$f"
done
