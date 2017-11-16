g++ -S -Os -fno-inline -fno-builtin -marm *.cpp
as -ahln CryptUtils.s >bin/CryptUtils-arm.txt
as -ahln RijndaelEncrypter.s >bin/RijndaelEncrypter-arm.txt
as -ahln RijndaelTest.s >bin/RijndaelTest-arm.txt

g++ -Os -fno-inline -fno-builtin -marm -o bin/Rijndael-arm *.cpp
objdump -d bin/Rijndael-arm >bin/Rijndael-arm.txt
rm a.out
