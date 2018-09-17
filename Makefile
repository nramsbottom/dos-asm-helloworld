
all:
	nasm -f bin -o hello.com hello.asm
run: all
	dosbox -noconsole -exit -conf ./dosbox.conf
disassemble: all
        objdump -D -b binary -Mintel,i8086 -mi8086 --adjust-vma=0x100 hello.com
