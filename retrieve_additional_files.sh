mkdir images
rm images/*

wget --no-check-certificate -P images http://dist.gem5.org/dist/v22-1/images/x86/ubuntu-18-04/x86-gpu-fs-20220512.img.gz

cd images
gzip -d x86-gpu-fs-20220512.img.gz
rm x86-gpu-fs-20220512.img.gz
cd ..

mkdir kernel
rm kernel/*

wget --no-check-certificate -P kernel https://dist.gem5.org/dist/v22-1/kernels/x86/static/vmlinux-5.4.0-105-generic

mkdir apps
rm apps/square

wget --no-check-certificate -P apps http://dist.gem5.org/dist/v22-1/test-progs/square/square

mkdir mmio
rm mmio/*

wget --no-check-certificate -P mmio https://raw.githubusercontent.com/gem5/gem5-resources/stable/src/gpu-fs/vega_mmio.log