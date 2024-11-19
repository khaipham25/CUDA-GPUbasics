#include "cuda.h"
#include "cuda_runtime.h"
#include "device_launch_parameters.h"
#include <stdio.h>
__global__ void kernel() {
	int temp=0;
	temp = threadIdx.x;
	printf("blockId %d threadId %d = %d\n", blockIdx.x, threadIdx.x, temp);

}
int main() {
	kernel <<<5, 5 >>> ();
	cudaDeviceSynchronize();
	return 0;
}