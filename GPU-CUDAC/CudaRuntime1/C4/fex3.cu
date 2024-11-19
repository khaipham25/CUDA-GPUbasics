
#include "cuda_runtime.h"
#include "device_launch_parameters.h"
#include "cuda.h"
#include <stdio.h>

__global__ void kernel1() {
	printf("Kernel1\n");
}
__global__ void kernel2() {
	printf("Kernel2\n");
}
int main() {
	kernel1 <<<1, 1 >>> ();
	printf("CPU here\n");
	kernel2 <<<1, 1 >>> ();
	cudaDeviceSynchronize();
	printf("here");
	return 0;
}