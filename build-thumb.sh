g++ -S -Os -fno-inline -fno-builtin -mthumb *.cpp
as -ahln CryptUtils.s >bin/CryptUtils-thumb.txt
as -ahln RijndaelEncrypter.s >bin/RijndaelEncrypter-thumb.txt
as -ahln RijndaelTest.s >bin/RijndaelTest-thumb.txt

g++ -Os -fno-inline -fno-builtin -mthumb -o bin/Rijndael-thumb *.cpp
objdump -d bin/Rijndael-thumb >bin/Rijndael-thumb.txt
rm a.out
