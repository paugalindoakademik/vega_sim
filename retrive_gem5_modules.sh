git clone --no-checkout https://github.com/gem5/gem5.git gem5

#mkdir -p gem5/build_opts
cd gem5

#wget -P build_opts https://github.com/gem5/gem5/blob/stable/build_opts/VEGA_X86

#git sparse-checkout init --cone
git sparse-checkout set build_tools build_opts/VEGA_X86 configs/common configs/network configs/ruby configs/topologies configs/example/gpufs include ext site_scons src util SConstruct COPYING LICENSE README.md
git checkout stable

cd ..