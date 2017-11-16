/* RijndaelTest.c : Defines the entry point for the console application. */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include "CryptTypes.h"
#include "CryptUtils.h"
#include "RijndaelEncrypter.h"
#include "tfp_printf.h"

#define BLOCK_LENGTH 1000
#define BLOCK_LENGTH_IN_BYTES (DATA_LENGTH * BLOCK_LENGTH)

static void TestRijndaelEncryption(void)
{
	KEY_VECTOR abKey =
	{
		/* 0x0F, 0x15, 0x71, 0xC9, 0x47, 0xD9, 0xE8, 0x59, 0x0C, 0xB7, 0xAD, 0xD6, 0xAF, 0x7F, 0x67, 0x98 */
		0x2B, 0x7E, 0x15, 0x16, 0x28, 0xAE, 0xD2, 0xA6, 0xAB, 0xF7, 0x15, 0x88, 0x09, 0xCF, 0x4F, 0x3C
		/* 0x8E, 0x73, 0xB0, 0xF7, 0xDA, 0x0E, 0x64, 0x52, 0xC8, 0x10, 0xF3, 0x2B, 0x80, 0x90, 0x79, 0xE5, */
		/* 0x62, 0xF8, 0xEA, 0xD2, 0x52, 0x2C, 0x6B, 0x7B */
		/* 0x60, 0x3D, 0xEB, 0x10, 0x15, 0xCA, 0x71, 0xBE, 0x2B, 0x73, 0xAE, 0xF0, 0x85, 0x7D, 0x77, 0x81, */
		/* 0x1F, 0x35, 0x2C, 0x07, 0x3B, 0x61, 0x08, 0xD7, 0x2D, 0x98, 0x10, 0xA3, 0x09, 0x14, 0xDF, 0xF4 */
	};
	DATA_VECTOR abInput =
	{
		0x32, 0x43, 0xF6, 0xA8, 0x88, 0x5A, 0x30, 0x8D, 0x31, 0x31, 0x98, 0xA2, 0xE0, 0x37, 0x07, 0x34
	};
	DATA_VECTOR abExpectedOutput =
	{
		/* 0x77, 0x14, 0x15, 0x79, 0x11, 0x05, 0x18, 0x46, 0x91, 0x8C, 0x61, 0xBF, 0x7E, 0x2B, 0x22, 0x2D */
		0x39, 0x25, 0x84, 0x1D, 0x02, 0xDC, 0x09, 0xFB, 0xDC, 0x11, 0x85, 0x97, 0x19, 0x6A, 0x0B, 0x32
	};

	DATA_VECTOR abOutput;
	RIJNDAEL_ENCRYPTER Encrypter;

	Init(&Encrypter, abKey);

	Encrypt(&Encrypter, abOutput, abInput);
	if (memcmp(abOutput, abExpectedOutput, DATA_LENGTH) == 0)
		tfp_printf("Rijndael : encryption passed.\n");
	else
		tfp_printf("Rijndael : encryption FAILED!\n");

	Decrypt(&Encrypter, abOutput, abExpectedOutput);
	if (memcmp(abOutput, abInput, DATA_LENGTH) == 0)
		tfp_printf("Rijndael : decryption passed.\n");
	else
		tfp_printf("Rijndael : decryption FAILED!\n");
}

static void TestRijndaelPerformance(int nDuration)
{
	KEY_VECTOR abKey =
	{
		0x2B, 0x7E, 0x15, 0x16, 0x28, 0xAE, 0xD2, 0xA6, 0xAB, 0xF7, 0x15, 0x88, 0x09, 0xCF, 0x4F, 0x3C
	};

	BYTE abData[BLOCK_LENGTH_IN_BYTES];
	RIJNDAEL_ENCRYPTER Encrypter;
	int nIterationCount;

	Init(&Encrypter, abKey);

	for (nIterationCount = 0; nIterationCount < nDuration; nIterationCount++)
	{
		int i;

		for (i = 0; i < BLOCK_LENGTH; i++)
		{
			tfp_printf("%ld\n", time(NULL));
			Encrypt(&Encrypter, &abData[i * DATA_LENGTH], &abData[i * DATA_LENGTH]);
		}
	}
	tfp_printf("%ld\n", time(NULL));
	tfp_printf("Rijndael : encrypted %ld bytes\n",
		(long)nDuration * (long)BLOCK_LENGTH_IN_BYTES);

	for (nIterationCount = 0; nIterationCount < nDuration; nIterationCount++)
	{
		int i;

		for (i = 0; i < BLOCK_LENGTH; i++)
		{
			tfp_printf("%ld\n", time(NULL));
			Decrypt(&Encrypter, &abData[i * DATA_LENGTH], &abData[i * DATA_LENGTH]);
		}
	}
	tfp_printf("%ld\n", time(NULL));
	tfp_printf("Rijndael : decrypted %ld bytes\n",
		(long)nDuration * (long)BLOCK_LENGTH_IN_BYTES);
}

/* Main application function */

int main(int argc, char* argv[], char* envp[])
{
	unsigned nDuration;

	if (argc >= 2)
		nDuration = atoi(argv[1]);
	else
		nDuration = 1;
	
	TestRijndaelEncryption();
	TestRijndaelPerformance(nDuration);

	return 0;
}

