#include "cuda.h"
#include "cuda_runtime.h"
#include "device_launch_parameters.h"
#include <stdio.h>

__device__ void Device1() {
	printf("Device1\n");
}
__device__ void Device22() {
	printf("Device3\n");
}
__global__ void kernel() {
	Device1();
	Device2();
}
void Func_in_host() {
	kernel <<<1, 1 >>> ();
	cudaDeviceSynchronize();//đợi GPU hoàn thành trước khi tiếp tục ,CPU có thể thực hiện công việc khác
}
int main() {
	Func_in_host();
}