gcc -S -Os -fno-inline -fno-builtin CryptUtils.c RijndaelEncrypter.c UnitTest.c
as -ahln CryptUtils.s >bin/CryptUtils-x86_64.txt
as -ahln RijndaelEncrypter.s >bin/RijndaelEncrypter-x86_64.txt
as -ahln UnitTest.s >bin/UnitTest-x86_64.txt

gcc -Os -fno-inline -fno-builtin -o bin/UnitTest-x86_64 CryptUtils.c RijndaelEncrypter.c UnitTest.c
objdump -d bin/UnitTest-x86_64 >bin/UnitTest-x86_64.txt
rm a.out
