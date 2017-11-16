riscv64-unknown-elf-g++ -S -Os -fno-inline -fno-builtin *.cpp
riscv64-unknown-elf-as -ahln CryptUtils.s >bin/CryptUtils-riscv.txt
riscv64-unknown-elf-as -ahln RijndaelEncrypter.s >bin/RijndaelEncrypter-riscv.txt
riscv64-unknown-elf-as -ahln RijndaelTest.s >bin/RijndaelTest-riscv.txt

riscv64-unknown-elf-g++ -Os -fno-inline -fno-builtin -o bin/Rijndael-riscv *.cpp
riscv64-unknown-elf-objdump -d -M numeric bin/Rijndael-riscv >bin/Rijndael-riscv.txt
rm a.out
