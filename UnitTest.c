/* RijndaelTest.c : Defines the entry point for the console application. */

#include <stdio.h>
#include <time.h>
#include "CryptTypes.h"
#include "CryptUtils.h"
#include "RijndaelEncrypter.h"
#include "libc_ide68k.h"
#include "tfp_printf.h"

#define TEST_ITOA 1

/* Unit test functions */

static void AssertTrue(char *pszMessage, int condition)
{
	if (!condition)
		puts(pszMessage);
}

static void TestMemcmp(void)
{
	BYTE abInput1[] =
	{
		0x01,0x02,0x03,0xFF,0x05
	};
	BYTE abInput2[] =
	{
		0x01,0x02,0x03,0x04,0x05
	};
	int anExpectedResults[] =
	{
		0, 0, 0, 0, 251, 251
	};
	char *pszMessage = "memcmp() failed";
	int i;

	for (i = 0; i < 6; i++)
	{
		AssertTrue(pszMessage, memcmp(abInput1, abInput2, i) == anExpectedResults[i]);
		AssertTrue(pszMessage, memcmp(abInput2, abInput1, i) == -anExpectedResults[i]);
	}
	AssertTrue(pszMessage, memcmp(&abInput1[3], &abInput2[3], 0) == 0);
	AssertTrue(pszMessage, memcmp(&abInput2[3], &abInput1[3], 0) == 0);
}

static void TestMemcpy(void)
{
	BYTE abInput[] =
	{
		0x01, 0x55, 0xAA, 0xFF
	};
	BYTE abBuffer[8];
	BYTE abExpected[] =
	{
		0x00, 0x01, 0x00, 0x01, 0x55, 0xAA, 0xFF, 0x00
	};
	char *pszMessage = "memcpy() failed";
	
	memset(abBuffer, 0x00, 8);
	AssertTrue(pszMessage, memcpy(&abBuffer[1], abInput, 1) == abBuffer + 1);
	AssertTrue(pszMessage, memcpy(&abBuffer[3], abInput, 4) == abBuffer + 3);
	AssertTrue(pszMessage, memcpy(&abBuffer[5], abInput, 0) == abBuffer + 5);
	AssertTrue(pszMessage, memcmp(abBuffer, abExpected, 8) == 0);
}

static void TestMemset(void)
{
	BYTE abBuffer[5];
	BYTE abExpected[] =
	{
		0x00, 0x01, 0xFF, 0x01, 0x00
	};
	char *pszMessage = "memset() failed";

	AssertTrue(pszMessage, memset(abBuffer, 0x00, 5) == abBuffer);
	AssertTrue(pszMessage, memset(&abBuffer[1], 0x01, 3) == abBuffer + 1);
	AssertTrue(pszMessage, memset(&abBuffer[2], 0xFF, 1) == abBuffer + 2);
	AssertTrue(pszMessage, memcmp(abBuffer, abExpected, 5) == 0);
}

static void TestStrlen(void)
{
	char *pszMessage = "strlen() failed";
	
	AssertTrue(pszMessage, strlen("") == 0);
	AssertTrue(pszMessage, strlen("0") == 1);
	AssertTrue(pszMessage, strlen("Hello") == 5);
}

static void TestStrcmp(void)
{
	char *apszInput[] =
	{
		"", "Hello", "Hallo", "Hello, world!"
	};
	int anExpectedResults[] =
	{
		0, -72, -72, -72, 72, 0, 4, -44, 72, -4, 0, -4, 72, 44, 4, 0
	};
	char *pszMessage = "strcmp() failed";
	int i, j;

	for (i = 0; i < 4; i++)
	{
		for (j = 0; j < 4; j++)
		{
			AssertTrue(pszMessage, strcmp(apszInput[i], apszInput[j]) == anExpectedResults[i * 4 + j]);
		}
	}
}

static void TestStrcpy(void)
{
	char *apszInput[] =
	{
		"", "Hello", "Hallo", "Hello, world!"
	};
	char szBuffer[20];
	char *pszMessage = "strcpy() failed";
	int i;

	for (i = 0; i < 4; i++)
	{
		memset(szBuffer, 0x55, 20);
		AssertTrue(pszMessage, strcpy(szBuffer, apszInput[i]) == szBuffer);
		AssertTrue(pszMessage, strcmp(szBuffer, apszInput[i]) == 0);
	}
}

static void TestAtoi(void)
{
	char *pszMessage = "atoi() failed";

	AssertTrue(pszMessage, atoi("0") == 0);
	AssertTrue(pszMessage, atoi(" 12345") == 12345);
	AssertTrue(pszMessage, atoi("+12345") == 12345);
	AssertTrue(pszMessage, atoi("-12345") == -12345);
}

#if TEST_ITOA
static void TestItoa(void)
{
	char szBuffer[10];
	char *pszMessage = "itoa() failed";
	
	AssertTrue(pszMessage, itoa(0, szBuffer, 10) == szBuffer);
	AssertTrue(pszMessage, strcmp(szBuffer, "0") == 0);
	AssertTrue(pszMessage, itoa(12345, szBuffer, 10) == szBuffer);
	AssertTrue(pszMessage, strcmp(szBuffer, "12345") == 0);
	AssertTrue(pszMessage, itoa(-12345, szBuffer, 10) == szBuffer);
	AssertTrue(pszMessage, strcmp(szBuffer, "-12345") == 0);
	AssertTrue(pszMessage, itoa(12345, szBuffer, 16) == szBuffer);
	AssertTrue(pszMessage, strlen(szBuffer) == 0);
}
#endif

static void TestIsspace(void)
{
	char *pszMessage = "isspace() failed";
	
	AssertTrue(pszMessage, isspace('\t'));
	AssertTrue(pszMessage, isspace('\r'));
	AssertTrue(pszMessage, isspace('\n'));
	AssertTrue(pszMessage, isspace(' '));
	AssertTrue(pszMessage, !isspace('\0'));
	AssertTrue(pszMessage, !isspace('\b'));
	AssertTrue(pszMessage, !isspace('\x1B'));
	AssertTrue(pszMessage, !isspace('!'));
	AssertTrue(pszMessage, !isspace('0'));
	AssertTrue(pszMessage, !isspace('9'));
	AssertTrue(pszMessage, !isspace('A'));
	AssertTrue(pszMessage, !isspace('Z'));
	AssertTrue(pszMessage, !isspace('a'));
	AssertTrue(pszMessage, !isspace('z'));
	AssertTrue(pszMessage, !isspace('~'));
	AssertTrue(pszMessage, !isspace('\x80'));
	AssertTrue(pszMessage, !isspace('\xA0'));
	AssertTrue(pszMessage, !isspace('\xFF'));
}

static void TestMulByte(void)
{
	BYTE abValues[6] =
	{
		0x00, 0x01, 0x80, 0x55, 0xAA, 0xFF
	};
	BYTE abExpected[6][6] =
	{
		{ 0x00,0x00,0x00,0x00,0x00,0x00 },
		{ 0x00,0x01,0x80,0x55,0xAA,0xFF },
		{ 0x00,0x80,0x9A,0x23,0x46,0x65 },
		{ 0x00,0x55,0x23,0xA1,0x59,0xF8 },
		{ 0x00,0xAA,0x46,0x59,0xB2,0xEB },
		{ 0x00,0xFF,0x65,0xF8,0xEB,0x13 }
	};
	int i, j;
	char *pszMessage = "MulByte() failed";

	for (i = 0; i < 6; i++)
	{
		for (j = 0; j < 6; j++)
		{
			AssertTrue(pszMessage, MulByte(abValues[i], abValues[j]) == abExpected[i][j]);
		}
	}
}

static void TestPuts(void)
{
	char *pszMessage = "puts() failed";
	AssertTrue(pszMessage, puts("Testing puts()") >= 0);
}

static void TestTfpSprintf(void)
{
	char *pszMessage = "tfp_sprintf() failed";
	char szBuffer[80];
	tfp_sprintf(szBuffer, "");
	AssertTrue(pszMessage, strcmp(szBuffer, "") == 0);
	tfp_sprintf(szBuffer, "\n");
	AssertTrue(pszMessage, strcmp(szBuffer, "\n") == 0);
	tfp_sprintf(szBuffer, "Hello, world!\n");
	AssertTrue(pszMessage, strcmp(szBuffer, "Hello, world!\n") == 0);
	tfp_sprintf(szBuffer, "%s, %s!\n", "Hello", "world");
	AssertTrue(pszMessage, strcmp(szBuffer, "Hello, world!\n") == 0);
	tfp_sprintf(szBuffer, "Answer is %d!\n", 42);
	AssertTrue(pszMessage, strcmp(szBuffer, "Answer is 42!\n") == 0);
	tfp_sprintf(szBuffer, "Answer is %ld!\n", 42L);
	AssertTrue(pszMessage, strcmp(szBuffer, "Answer is 42!\n") == 0);
}

static void TestTfpPrintf(void)
{
	puts("Testing tfp_printf()");
	tfp_printf("");
	tfp_printf("\n");
	tfp_printf("Hello, world!\n");
	tfp_printf("%s, %s!\n", "Hello", "world");
	tfp_printf("Answer is %d!\n", 42);
	tfp_printf("Answer is %ld!\n", 42L);
}

static void TestTime(void)
{
	puts("Testing time()");
	tfp_printf("%ld\n", time(NULL));
}

/* Main application function */

int main(int argc, char* argv[], char* envp[])
{
	TestMemcmp();
	TestMemcpy();
	TestMemset();
	TestStrlen();
	TestStrcmp();
	TestStrcpy();
	TestAtoi();
#if TEST_ITOA
	TestItoa();
#endif
	TestIsspace();
	TestMulByte();
	TestPuts();
	TestTfpSprintf();
	TestTfpPrintf();
	TestTime();
	puts("UnitTest done");

	return 0;
}

