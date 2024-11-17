#include <stdio.h>
#include "cuda_runtime.h"
#include "device_launch_parameters.h"

// Hàm kernel trên GPU
__global__ void hello()
{
    printf("Hello from Thread %d in Block %d\n", threadIdx.x, blockIdx.x);
}

int main()
{
    hello < <<1, 1 >> > ();

    // ??ng b? hóa GPU và CPU
    cudaDeviceSynchronize();

    return 0;
}
