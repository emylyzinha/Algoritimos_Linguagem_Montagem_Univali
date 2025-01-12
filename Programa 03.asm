# Disciplina: Arquitetura e Organização de Processadores
# Atividade: Avaliação 01 – Programação em Linguagem de Montagem
# Programa 03 - exercicício 4
# Grupo: - Marcela F. Leffer e Emily Mendes dos Santos



.data
textox: .asciz "digite o valor 1:"
textoy: .asciz "digite o valor 2:"


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


igual:
bne t0, t1, t0Maior
jal fim

t0Maior:
blt t0, t1, t1Maior
sub t0, t0, t1
jal igual

t1Maior:
sub t1, t1, t0
jal igual

fim: 
# apresenta na tela resultado
addi a7, zero, 1
add a0, zero, t0
ecall

