# Disciplina: Arquitetura e Organização de Processadores
# Atividade: Avaliação 01 – Programação em Linguagem de Montagem
# Programa 02
# Grupo: - Marcela F. Leffer e Emily Mendes dos Santos



.data
textox: .asciz "digite x valor:"
textoy: .asciz "digite y valor:"
menos: .asciz "menos: "
mais: .asciz "mais"

.text
addi a7, zero, 4
la a0, textox
ecall
addi, a7, zero, 5
ecall 
add t0, zero, a0

addi a7, zero, 4
la a0, textoy
ecall
addi, a7, zero, 5
ecall 
add t1, zero, a0

addi t4, zero, 1

soma:

add t2, t2, t0

addi a7, zero, 1
add a0, zero, t1

bne t1, t4, decremento
beq t1, t4 fim

decremento:
sub t1, t1, t4

blt zero, t1, soma # (0 < t1)
fim:
# apresenta na tela resultado
addi a7, zero, 1
add a0, zero, t2
ecall



