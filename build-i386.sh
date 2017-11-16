g++ -m32 -S -Os -fno-inline -fno-builtin *.cpp
as --32 -ahln CryptUtils.s >bin/CryptUtils-i386.txt
as --32 -ahln RijndaelEncrypter.s >bin/RijndaelEncrypter-i386.txt
as --32 -ahln RijndaelTest.s >bin/RijndaelTest-i386.txt

g++ -m32 -Os -fno-inline -fno-builtin -o bin/Rijndael-i386 *.cpp
objdump -d -mi386 -M intel bin/Rijndael-i386 >bin/Rijndael-i386.txt
rm a.out
