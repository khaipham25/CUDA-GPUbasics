#include "cuda.h"
#include "cuda_runtime.h"
#include "device_launch_parameters.h"
#include <stdio.h>
__global__ void kernel() {
	printf("GPU\n");
}
int main() {
	kernel << <2, 5 >> > ();
	cudaDeviceSynchronize();
	return 0;
}