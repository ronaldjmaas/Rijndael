// RijndaelTest.cpp : Defines the entry point for the console application.
//

#include <algorithm>
#include <iostream>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include "CryptTypes.h"
#include "CryptUtils.h"
#include "RijndaelEncrypter.h"

using namespace std;

static void TestRijndaelEncryption()
{
	const KEY_VECTOR abKey =
	{
		// 0x0F, 0x15, 0x71, 0xC9, 0x47, 0xD9, 0xE8, 0x59, 0x0C, 0xB7, 0xAD, 0xD6, 0xAF, 0x7F, 0x67, 0x98
		0x2B, 0x7E, 0x15, 0x16, 0x28, 0xAE, 0xD2, 0xA6, 0xAB, 0xF7, 0x15, 0x88, 0x09, 0xCF, 0x4F, 0x3C
		// 0x8E, 0x73, 0xB0, 0xF7, 0xDA, 0x0E, 0x64, 0x52, 0xC8, 0x10, 0xF3, 0x2B, 0x80, 0x90, 0x79, 0xE5,
		// 0x62, 0xF8, 0xEA, 0xD2, 0x52, 0x2C, 0x6B, 0x7B
		// 0x60, 0x3D, 0xEB, 0x10, 0x15, 0xCA, 0x71, 0xBE, 0x2B, 0x73, 0xAE, 0xF0, 0x85, 0x7D, 0x77, 0x81,
		// 0x1F, 0x35, 0x2C, 0x07, 0x3B, 0x61, 0x08, 0xD7, 0x2D, 0x98, 0x10, 0xA3, 0x09, 0x14, 0xDF, 0xF4
	};
	const DATA_VECTOR abInput =
	{
		0x32, 0x43, 0xF6, 0xA8, 0x88, 0x5A, 0x30, 0x8D, 0x31, 0x31, 0x98, 0xA2, 0xE0, 0x37, 0x07, 0x34
	};
	const DATA_VECTOR abExpectedOutput =
	{
		// 0x77, 0x14, 0x15, 0x79, 0x11, 0x05, 0x18, 0x46, 0x91, 0x8C, 0x61, 0xBF, 0x7E, 0x2B, 0x22, 0x2D
		0x39, 0x25, 0x84, 0x1D, 0x02, 0xDC, 0x09, 0xFB, 0xDC, 0x11, 0x85, 0x97, 0x19, 0x6A, 0x0B, 0x32
	};

	DATA_VECTOR abOutput;
	CRijndaelEncrypter Encrypter;

	Encrypter.Init(abKey);

	Encrypter.Encrypt(abOutput, abInput);
	if (memcmp(abOutput, abExpectedOutput, DATA_LENGTH) == 0)
		cout << "Rijndael : encryption passed." << endl;
	else
		cout << "Rijndael : encryption FAILED!" << endl;

	Encrypter.Decrypt(abOutput, abExpectedOutput);
	if (memcmp(abOutput, abInput, DATA_LENGTH) == 0)
		cout << "Rijndael : decryption passed." << endl;
	else
		cout << "Rijndael : decryption FAILED!" << endl;
}

static void TestRijndaelPerformance(const int nDuration)
{
	const KEY_VECTOR abKey =
	{
		0x2B, 0x7E, 0x15, 0x16, 0x28, 0xAE, 0xD2, 0xA6, 0xAB, 0xF7, 0x15, 0x88, 0x09, 0xCF, 0x4F, 0x3C
	};
	const int nBlockLength = 1000;
	const int nBlockLengthInBytes = nBlockLength * DATA_LENGTH;

	BYTE* abData = new BYTE[nBlockLengthInBytes];
	CRijndaelEncrypter Encrypter;
	time_t t1, t2;
	int nIterationCount;
	int nActualDuration;

	Encrypter.Init(abKey);

	t1 = time(NULL);
	for (nIterationCount = 0; (t2 = time(NULL)) < t1 + nDuration; nIterationCount++)
	{
		for (int i = 0; i < nBlockLength; i++)
			Encrypter.Encrypt(&abData[i * DATA_LENGTH], &abData[i * DATA_LENGTH]);
	}

        nActualDuration = (int)(t2 - t1);
	cout << "Rijndael : encrypted " <<
		((long)nIterationCount * (long)nBlockLengthInBytes) / (long)nActualDuration << " bytes per second" << endl;

	t1 = time(NULL);
	for (nIterationCount = 0; (t2 = time(NULL)) < t1 + nDuration; nIterationCount++)
	{
		for (int i = 0; i < nBlockLength; i++)
			Encrypter.Decrypt(&abData[i * DATA_LENGTH], &abData[i * DATA_LENGTH]);
	}

        nActualDuration = (int)(t2 - t1);
	cout << "Rijndael : decrypted " <<
		((long)nIterationCount * (long)nBlockLengthInBytes) / (long)nActualDuration << " bytes per second" << endl;

	delete[] abData;
}

// Main application function

int main(const int argc, const char* argv[], const char* envp[])
{
	unsigned nDuration;

	if (argc >= 2)
		nDuration = atoi(argv[1]);
	else
		nDuration = 60;
	
	TestRijndaelEncryption();
	TestRijndaelPerformance(nDuration);

	return 0;
}
