SOURCES := $(wildcard *.cpp)
OBJECTS := $(SOURCES:.cpp=.o)
CC = clang++

.PHONY: all clean
all: $(OBJECTS)
	$(CC) -foffload-lto=thin -Xoffload-linker --lto-whole-program-visibility -fgpu-rdc --offload-arch=native  -fopenmp -fopenmp-cuda-mode -Dgsl_CONFIG_CONTRACT_CHECKING_OFF -Wno-tautological-constant-compare -Wno-openmp-mapping --rocm-path=/opt/rocm-6.3.1 --save-temps $(OBJECTS) -o a.out

%.o : %.cpp
	$(CC) -c -foffload-lto=thin --offload-arch=native  -fopenmp -fopenmp-cuda-mode -Dgsl_CONFIG_CONTRACT_CHECKING_OFF -Wno-tautological-constant-compare -Wno-openmp-mapping --rocm-path=/opt/rocm-6.3.1 --save-temps $<

clean:
	rm -rf *.o a.out




#$(CC) -O3 -foffload-lto=thin -fopenmp -fopenmp-targets=amdgcn -Xopenmp-target=amdgcn -march=gfx90a $(OBJECTS) -o a.out
#$(CC) -O3 -foffload-lto=thin -fopenmp -fopenmp-targets=amdgcn -Xopenmp-target=amdgcn -march=gfx90a -c  $< -o $@
