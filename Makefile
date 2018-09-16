
all:
	nasm -f bin -o hello.com hello.asm
run: all
	dosbox -noconsole -exit -conf ./dosbox.conf
