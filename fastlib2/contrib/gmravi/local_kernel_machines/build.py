librule(
	name = "svm",
	
	sources = ["svm_main.cc"],
	
        headers = ["opt_smo.h", "opt_sgd.h", "svm.h"],
	
	deplibs = ["fastlib:fastlib"],
	
)

binrule(
    # The name of the executable.
    name = "svm_main",
    
    sources = ["svm_main.cc"],
   
    headers = ["opt_smo.h", "opt_sgd.h", "svm.h"],

    deplibs = [":svm"]

    )

librule(
    name = "lkm_lib",                            # this line can be safely omitted
    sources = [],                            # files that must be compiled
    #headers = ["local_kernel_machines_def.h","utils_lkm.h","local_kernel_machines_impl.h","my_crossvalidation.h"],
    deplibs =["fastlib:fastlib_int","mlpack/fastica:fastica_lib","mlpack/svm:svm"]
    )

binrule(
    name = "lkm",
    sources = ["local_kernel_machines_main.cc"],
    #headers = ["local_kernel_machines_def.h","utils_lkm.h","local_kernel_machines_impl.h","my_crossvalidation.h"],
    deplibs = [":lkm_lib","fastlib:fastlib_int"]
    )

# to build:
# 1. make sure have environment variables set up:
#    $ source /full/path/to/fastlib/script/fl-env /full/path/to/fastlib
#    (you might want to put this in bashrc)
# 2. fl-build main
#    - this automatically will assume --mode=check, the default
#    - type fl-build --help for help
# 3. ./main
#    - to build same target again, type: make
#    - to force recompilation, type: make clean
