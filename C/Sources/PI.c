#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>

int main() {
	srand(time(NULL));

	double R = 1;
	double N;
	double NHit;
	double devStd;
	double A;
	double PI;

	double x;
	double y;

	for (N = 1000; N <= 1000000000; N = N * 10) {
		NHit = 0;
		for (int i = 0; i < N; i++) {
			x = rand() / (double) RAND_MAX;
			y = rand() / (double) RAND_MAX;
			if (sqrt(x * x + y * y) <= R) NHit++;
		}
		A = NHit / N;
		devStd = sqrt(A * (1 - A) / N);
		PI = 4.0 * A;
		printf("PI: %f\t[%f, %f]\tN = %d\n", PI, (A - 3 * devStd) * 4, (A + 3 * devStd) * 4, (int)N);
	}

	exit(0);
}