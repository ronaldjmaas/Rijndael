g++ -S -Os -fno-inline -fno-builtin *.cpp
as -ahln CryptUtils.s >bin/CryptUtils-armv8.txt
as -ahln RijndaelEncrypter.s >bin/RijndaelEncrypter-armv8.txt
as -ahln RijndaelTest.s >bin/RijndaelTest-armv8.txt

g++ -Os -fno-inline -fno-builtin -o bin/Rijndael-armv8 *.cpp
objdump -d bin/Rijndael-armv8 >bin/Rijndael-armv8.txt
rm a.out
