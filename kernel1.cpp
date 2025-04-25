#include <stdio.h>

float kernel1(float *A, int n)
{
  float val = 0.0f;
  #pragma omp target teams distribute parallel for map(to:A[0:n]) reduction(+:val)
  for(int i = 0; i < n; i++)
  {
    val += A[i];
  }
  return val;
}

