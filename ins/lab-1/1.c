// Write a C program to count the number of 1’s and 0’s in the binary representation of a number.

#include<stdio.h>

int main () {
	printf("Enter n : ");
	int n, os=0, zs=0, rem=0;
	scanf("%d", &n);
	while (n != 0) {
		if (n & 1) os++;
		else zs++;
		n /= 2;
	}
	printf("Zeros %d, Ones %d\n", zs, os);
	return 0;
}
