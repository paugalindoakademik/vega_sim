# The Vega Simulator

This is a repository that allows setting up a complete Gem5 GPU Full System environment in three simple executables.

## Getting Ready

First command will install all ubuntu packages and a python3 virtual environment with some required pip packages installed. And also will make a partial retrieve from Gem5 Official Repositories with just the needed modules and files for the GPU FS task.

```
./install.sh
```

Second command will build the Gem5 Simulator (it might last 30 minutes aprox.) and the m5term.

```
./build_gem5.sh
```

Lastly the following command will retrieve a disk image, the gpu kernel and the square app binary that will allow us to test our build.

```
./retrieve_additional_files.sh
```

## Running a Simulation

Once followed the previous instructions we can proceed a test our GPU FS build. To do so open two different terminals and execute the following commands one in each.

```
sudo gem5/build/VEGA_X86/gem5.opt gem5/configs/example/gpufs/vega10_kvm.py --disk-image images/x86-gpu-fs-20220512.img --kernel kernel/vmlinux-5.4.0-105-generic --gpu-mmio-trace mmio/vega_mmio.log --app apps/square
```
```
./gem5/util/term/m5term 3456
```

## Cleaning all environment and build

Execute the following script to reset all the environment properly. Take into account that it will erase all the installation.

```
./clean_environment.sh
```