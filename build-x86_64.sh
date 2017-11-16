g++ -S -Os -fno-inline -fno-builtin *.cpp
as -ahln CryptUtils.s >bin/CryptUtils-x86_64.txt
as -ahln RijndaelEncrypter.s >bin/RijndaelEncrypter-x86_64.txt
as -ahln RijndaelTest.s >bin/RijndaelTest-x86_64.txt

g++ -Os -fno-inline -fno-builtin -o bin/Rijndael-x86_64 *.cpp
objdump -d -M intel bin/Rijndael-x86_64 >bin/Rijndael-x86_64.txt
rm a.out
