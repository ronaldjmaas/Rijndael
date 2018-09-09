g++ -S -Os -fno-inline -fno-builtin *.cpp
as -ahln CryptUtils.s >bin/CryptUtils-riscv.txt
as -ahln RijndaelEncrypter.s >bin/RijndaelEncrypter-riscv.txt
as -ahln RijndaelTest.s >bin/RijndaelTest-riscv.txt

g++ -Os -fno-inline -fno-builtin -o bin/Rijndael-riscv *.cpp
objdump -d -M numeric bin/Rijndael-riscv >bin/Rijndael-riscv.txt
rm a.out
