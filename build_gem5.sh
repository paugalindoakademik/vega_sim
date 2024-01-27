source vega_sim_env/bin/activate

cd gem5
scons build/VEGA_X86/gem5.opt -j 4

cd util/term
make

cd ../../..