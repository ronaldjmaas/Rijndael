gcc -S -Os -fno-inline -fno-builtin CryptUtils.c RijndaelEncrypter.c RijndaelTest.c
as -ahln CryptUtils.s >bin/CryptUtils-x86_64.txt
as -ahln RijndaelEncrypter.s >bin/RijndaelEncrypter-x86_64.txt
as -ahln RijndaelTest.s >bin/RijndaelTest-x86_64.txt

gcc -Os -fno-inline -fno-builtin -o bin/RijndaelTest-x86_64 CryptUtils.c RijndaelEncrypter.c RijndaelTest.c
objdump -d bin/RijndaelTest-x86_64 >bin/RijndaelTest-x86_64.txt
rm a.out
