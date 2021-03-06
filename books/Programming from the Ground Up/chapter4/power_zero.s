#Extended power function which correctly handles input of zero.

.section .data
.section .text

.globl _start
_start:

#Push the second argument.
pushl $0

#Push the first argument.
pushl $3

call power

#Move the stack pointer back.
addl $8, %esp

movl %eax, %ebx

movl $1, %eax
int $0x80

.type power, @function

power:

#Save the old base pointer.
pushl %ebp

#Make the stack pointer the new base pointer.
movl %esp, %ebp

#Make room for a local variable 4 bytes long.
subl $4, %esp

#Move the first argument into %ebx
#8 + %ebp?
movl 8(%ebp), %ebx
movl 12(%ebp), %ecx

cmpl $0, %ecx
jne cont
movl $1, %eax
jmp power_end_end

cont:
movl %ebx, -4(%ebp)

power_loop_start:

#If the power is 1 then we are done.
cmpl $1, %ecx
je power_end

#Move the current result into the local variable.
movl -4(%ebp), %eax

imull %ebx, %eax
movl %eax, -4(%ebp)

decl %ecx
jmp power_loop_start

power_end:
movl -4(%ebp), %eax

#We need to avoid moving the local variable into %eax if
#the input was zero.
power_end_end:

movl %ebp, %esp 	#Restore the stack pointer.
popl %ebp		#Restore the base pointer.
ret
