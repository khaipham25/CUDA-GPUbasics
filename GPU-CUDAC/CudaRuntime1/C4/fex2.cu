#include <stdio.h>
#include "cuda_runtime.h"
#include "device_launch_parameters.h"
__device__ void Device1() {
	printf("Device11\n");
}
__device__ void Device2() {
	printf("Device22\n");
	//Func() trong này không thể dùng
}
void Func() {
	//Device1(); cũng không thể sử dụng
}
int main() {
	Func();
	//Device2(); không thể sử dụng như này mà chỉ trong __global__ mới được
	cudaDeviceSynchronize();
	return 0;
}