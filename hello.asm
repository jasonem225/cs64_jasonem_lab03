# hello.asm
# A "Hello World" program in MIPS Assembly for CS64
#
#  Data Area - allocate and initialize variables
.data

greet: .asciiz "Enter an integer:\n"

magic_number: .asciiz "Hello Pandemic World of 2021!\nThe magic number is "

end: .asciiz "!!!\n"

#Text Area (i.e. instructions)
.text
main:

    # ask for input
    li $v0, 4
    la $a0, greet
    syscall

    # get input
    li $v0, 5
    syscall
    move $t0, $v0

    # print middle text
    li $v0, 4
    la $a0, magic_number
    syscall

    # print input
    li $v0, 1
    move $a0, $t0
    syscall

    #print exclamation marks
    li $v0, 4
    la $a0, end
    syscall

exit:
    li $v0, 10
    syscall
