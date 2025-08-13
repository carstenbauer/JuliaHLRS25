# uncomment this if you are on cluster gpu node
ml juliahpc
# ml nvidia/nvhpc
ml mpi/openmpi
export OMPI_MCA_mpi_cuda_support=0
# export OMPI_MCA_btl_openib_warn_no_device_params_found=0
export OMPI_MCA_mca_base_component_show_load_errors=0

for f in *.jl
do
    echo "Running $f"
    mpiexecjl --project -n 5 julia "$f"
done
