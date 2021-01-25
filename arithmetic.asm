# arithmetic.asm
# A simple calculator program in MIPS Assembly for CS64
#

.text
main:

    # get input 1
    li $v0, 5
    syscall
    move $t0, $v0

    # get input 2
    li $v0, 5
    syscall
    move $t1, $v0

    # get input 3
    li $v0, 5
    syscall
    move $t2, $v0

    li $t3, 100

    # 64*(a-b)
    sub $t0, $t0, $t1
    sll $t0, $t0, 6

    # 100*c
    mult $t2, $t3
    mflo $t2

    add $t0, $t0, $t2

    li $v0, 1
    move $a0, $t0
    syscall

exit:
	li $v0, 10
    syscall
