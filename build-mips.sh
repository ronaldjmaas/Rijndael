g++ -S -Os -fno-inline -fno-builtin *.cpp
as -ahln CryptUtils.s >bin/CryptUtils-mips.txt
as -ahln RijndaelEncrypter.s >bin/RijndaelEncrypter-mips.txt
as -ahln RijndaelTest.s >bin/RijndaelTest-mips.txt

g++ -Os -fno-inline -fno-builtin -o bin/Rijndael-mips *.cpp
objdump -d -M numeric bin/Rijndael-mips >bin/Rijndael-mips.txt
rm a.out
