# Disciplina: Arquitetura e Organização de Processadores
# Atividade: Avaliação 01 – Programação em Linguagem de Montagem
# Programa 01
# Grupo: - Marcela F. Leffer e Emily Mendes dos Santos



.data
texto: .asciz "digite 1 valor:"

.text
addi a7, zero, 4
la a0, texto
ecall

addi, a7, zero, 5
ecall 
add t0, zero, a0


addi a7, zero, 4
la a0, texto
ecall

addi, a7, zero, 5
ecall 
add t1, zero, a0


addi a7, zero, 4
la a0, texto
ecall

addi, a7, zero, 5
ecall 
add t2, zero, a0


#.text
#blt t0, t1, t0Menort1
#blt t1, t0, t1Menort0



blt t1, t0, t0naomenor # (t0 < t1)
blt t2, t0, t0naomenor # (t0 < t2)
#se chegou aqui o t0 é o menor de todos
blt t2,t1,t2meio # (t1 < t2)
#se chegou aqui o t0, o t1 é o do meio e o t2 é o maior
addi a7, zero, 1
add a0, zero, t0
ecall
addi a7, zero, 1
add a0, zero, t1
ecall
addi a7, zero, 1
add a0, zero, t2
ecall
jal fim

t2meio:
#se chegou aqui o t0, o t2 é o do meio e o t1 é o maior
addi a7, zero, 1
add a0, zero, t0
ecall
addi a7, zero, 1
add a0, zero, t2
ecall
addi a7, zero, 1
add a0, zero, t1
ecall
jal fim

t0naomenor:
blt t2,t1,t1naomenor # (t1 < t2)
#se chegou aqui t1 é o menor
blt t2, t0, t0meio # (t0 < t2)

#se chegou aqui t1 é o menor e t0 é o do meio e o t2 é o maior
addi a7, zero, 1
add a0, zero, t1
ecall
addi a7, zero, 1
add a0, zero, t0
ecall
addi a7, zero, 1
add a0, zero, t2
ecall
jal fim


t0meio:
#se chegou aqui o t1 é o menor , o t2 é o do meio e o t0 é o maior
addi a7, zero, 1
add a0, zero, t1
ecall
addi a7, zero, 1
add a0, zero, t2
ecall
addi a7, zero, 1
add a0, zero, t0
ecall
jal fim


t1naomenor:
#se chegou aqui o t2 é o menor
blt t1, t0, t2t1t0 # (t0 < t1)
#se chegou aqui o t2 é o menor , o t0 é o do meio e o t1 é o maior
addi a7, zero, 1
add a0, zero, t2
ecall
addi a7, zero, 1
add a0, zero, t0
ecall
addi a7, zero, 1
add a0, zero, t1
ecall
jal fim

t2t1t0:

#se chegou aqui o t2 é o menor , o t1 é o do meio e o t0 é o maior
addi a7, zero, 1
add a0, zero, t2
ecall
addi a7, zero, 1
add a0, zero, t1
ecall
addi a7, zero, 1
add a0, zero, t0
ecall
jal fim


fim: