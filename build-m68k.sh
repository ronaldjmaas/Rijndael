g++ -S -Os -fno-inline -fno-builtin -m68020 *.cpp
as -ahln CryptUtils.s >bin/CryptUtils-m68k.txt
as -ahln RijndaelEncrypter.s >bin/RijndaelEncrypter-m68k.txt
as -ahln RijndaelTest.s >bin/RijndaelTest-m68k.txt

g++ -Os -fno-inline -fno-builtin -m68020 -o bin/Rijndael-m68k *.cpp
objdump -d bin/Rijndael-m68k >bin/Rijndael-m68k.txt
rm a.out
