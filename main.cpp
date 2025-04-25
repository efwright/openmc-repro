#include <omp.h>
#include <stdio.h>

extern float kernel1(float*, int);
extern float kernel2(float*, int);

int main()
{
  int n = 100;
  float *A = new float[n];

  float val1 = kernel1(A, n);
  float val2 = kernel2(A, n);

  return 0;
}

