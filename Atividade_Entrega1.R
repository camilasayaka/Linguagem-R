##### ME115 - Linguagem R #####
##### Nome: Camila Sayaka Hiura

# 1. Considere o código a seguir para criar a matrix:
X <- matrix(data=seq(1, 9), nrow=3, ncol=3, byrow=T)
X

# Considere a matrix X. Indexando elemento e elemento, calcule:
# (a) a soma dos elementos da linha 2.
soma_linha2 <- sum(X[2,])
soma_linha2

#(b) a soma dos elementos da coluna 3.
soma_coluna3 <- sum(X[,3])
soma_coluna3

#(c) a soma dos elementos da diagonal de X.
soma_diagonal <- sum(diag(X))
soma_diagonal

# 2. Crie a matrix Y de tamanho 10 × 10 que contenha os valores de 1 a 100, 
# dispostos por linha.
Y <- matrix(1:100, nrow=10, ncol=10, byrow=T)
colnames(Y) = c("C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10")
rownames(Y) = c("R1", "R2", "R3", "R4", "R5", "R6", "R7", "R8", "R9", "R10")
Y

# Imprima na tela os seguintes elementos:
# (a) Elementos das colunas pares de Y.
elem_col_par <- Y[,seq(2,10,2)]
elem_col_par

# (b) Elementos das linhas pares de Y .
elem_linha_par <- Y[seq(2,10,2),]
elem_linha_par

# (c) Elementos das linhas e colunas pares de Y .
pares<- Y[seq(2,10,2), seq(2,10,2)]
pares

# 3. O objeto data.frame pode ser pensado como uma matriz. Neste caso, sua indexação 
# pode ser feita através do indexador [,]. Execute o código abaixo para carregar o 
# data frame murders do pacote dslabs.
library(dslabs)
data(murders)
murders

# A seguir, responda:
# (a) O que representa o comando murders[1, 1]?
# Resposta: Representa o elemento da linha 1 e coluna 1 do data.frame murders,
# ou seja, indica o estado do Alabama.
murders[1, 1]

# (b) O que representa o comando murders[1, ]?
# Resposta: Representa os elementos da linha 1 do data.frame murders.
murders[1, ]

# (c) O que representa o comando murders[, 1]?
# Resposta: Representa os elementos da coluna 1 do data.frame murders.
murders[, 1]

# (d) O que representa o comando murders[1:2, ]?
# Resposta: Representa os elementos das linhas 1 e 2 do data.frame murders.
murders[1:2, ]

# (e) O que representa o comando murders[, 3:4]?
# Resposta: Representa os elementos das colunas 3 e 4 do data.frame murders
murders[, 3:4]

# 4. O código abaixo retorna "Nem todos os positivos". Por que?
x <- c (1, 2, -3, 4)
if (all (x> 0)) {
  print("Todos os positivos")
} else {
  print("Nem todos os positivos")
}
# Resposta: Pois, de acordo com o código, se todos os elementos dentro do vetor x fossem 
# maior que zero, ele retornaria "Todos os positivos". No entanto, como o terceiro elemento 
# é um número negativo, o código retorna "Nem todos os positivos".

# (a) Reescreva o código tal que ele retorne "Todos os positivos". 
# Dica: utilize o operador de negação !.
x <- c (1, 2, -3, 4)
if (!all (x> 0)) {
  print("Todos os positivos")
} else {
  print("Nem todos os positivos")
}

# (b) Reescreva o código tal que ele retorne uma frase "Nem todos são números pares" 
# para o caso de haver algum número ímpar em x e caso contrário "Todos são números pares". 
# Dica: use x \%\%2.
x <- c (1, 2, -3, 4)
if (all(x%%2==0)) {
  print("Todos são números pares")
} else {
  print("Nem todos são números pares")
}

# (c) Usando a função any (utilize ?any para saber sobre ela) e o vetor x, reescreva o 
# código para que a mensagem "Algum número negativo" seja exibida caso existam números 
# negativos em x e "Nenhum número negativo" caso contrário.
x <- c (1, 2, -3, 4)
if (any(x<0)) {
  print("Algum número negativo")
} else {
  print("Nenhum número negativo")
}

# (d) Defina um vetor y tal que usando o código em (b) ele retorne "Todos são números pares".
set.seed(12345)
y <- sample(1:500, size = 10, replace = T) * 2
y
if (all(y%%2==0)) {
  print("Todos são números pares.")
} else {
  print("Nem todos são números pares")
}

# 5. Usando o código da aula prática 01 dado a seguir:
library(dslabs)
data(murders)
murder_rate <- murders$total / murders$population*100000

# execute o código abaixo, o qual nos diz qual(is) estado(s) tem a taxa de assassinato 
# por 100.000 habitantes menor do que 0.5 pessoas.
ind <- which(murder_rate < 0.5)
if(length(ind) > 0){
  print(murders$state[ind])
} else{
  print("No state has murder rate that low")
}

# A seguir, usando o código fornecido, encontre:
# (a) os estados com taxa por 100.000 habitantes maior ou igual a 2 pessoas.
ind <- which(murder_rate >= 2)
if(length(ind) > 0){
  print(murders$state[ind])
} else{
  print("No state has murder rate that low")
}

# (b) os estados com taxa por 100.000 habitantes entre 0.5 e 2 pessoas.
ind <- which(murder_rate > 0.5 & murder_rate < 2)
if(length(ind) > 0){
  print(murders$state[ind])
} else{
  print("No state has murder rate that low")
}

# (c) os estados com taxa por 100.000 habitantes menor do que 0.25 pessoas.
ind <- which(murder_rate < 0.25)
if(length(ind) > 0){
  print(murders$state[ind])
} else{
  print("No state has murder rate that low")
}

# 6. O controle de fluxo ifelse trabalha em vetores, como exemplificado no código a seguir.
a <- c(0, 1, 2, -4, 5)
ifelse(a > 0, 1/a, NA)

# (a) Crie uma sequência de inteiros -10 a 120 e armazene. Utilizando ifelse, retorne a 
# raiz quadrada dos elementos que são maiores ou iguais a zero e NA caso contrário.
A <- -10:120
ifelse(A >= 0, sqrt(A), NA)

# (b) Utilizando a sequência criada em (a) e o comando ifelse, retorne 1 se o número for 
# par e 0 caso contrário.
ifelse(A%%2==0, 1, 0)

# (c) Utilizando a sequencia criada em (a) e o comando ifelse, retorne o próprio número 
# se este for divisível por 3 e NA caso contrário.
ifelse(A%%3==0, A, NA)

# 7. O comando for é um comando de repetição. Considere os códigos a seguir como exemplos.

# (a) Utilizando o data frame murders, considere a taxa de mortes por 100000 habitantes. 
# Calcule a média da taxa de mortes e armazene na variável media.
murder_rate <- murders$total / murders$population*100000
media = mean(murder_rate)

# (b) Calcule a média da taxa de mortes para a região Sul (South) utilizando um bloco de for, 
# como nos exemplos, e guarde na variável media.south.
soma <- 0
num <- 0
for (i in 1:nrow(murders)) { 
  if (murders$region[i]=='South') {
    soma <- soma+murder_rate[i]
    num <- num+1
  }
}
media_south <- soma/num

# (c) Calcule a média da taxa de mortes para regiões que não sejam a região "South" ou 
# "North Central" utilizando um único bloco de repetição for e guarde na variável 
# media.outras. Dica: use o código do item (b) com operador de negação !.
soma2 <- 0
num2 <- 0
for (i in 1:nrow(murders)) {
  if (murders$region[i]!='South' & murders$region[i]!='North Central') {
    soma2 <- soma2+murder_rate[i]
    num2 <- num2+1
  }
}
media_outras <- soma2/num2

# (d) Imprima na tela o valor das variáveis em (a), (b) e (c).
media
media_south
media_outras

# 8. Considere o exemplo de bloco de repetição aninhado do exercício anterior. A seguir, 
# calcule a seguinte expressãoe e imprima na tela o valor final de m.
m <- 0
for (i in 1:10) {
  for (j in 1:10) {
    m <- m + i*j
  }
}
m = m/100
m

# 9. Considere bloco de repetição usando o comando while.

# (a) Considere a sequência -108:88 e armazene-a em s. Utilizando o bloco de repetição 
# while, faça a soma dos valores de s até que um valor positivo em s seja encontrado.
s <- -108:88
s
soma_ <- 0
k <- 1
while (s[k]<=0) {
  soma_ <- soma_ + s[k]
  k <- k+1
}
soma_

# (b) Usando s e o bloco de repetição while, faça a soma dos valores de s a partir do valor
# 88 até que um valor negativo de s seja encontrado. Dica: você pode usar decremento de um 
# índice.
soma__ <- 0
j <- length(s)
while (s[j]>=0) {
  soma__ <- soma__ + s[j]
  j <- j-1
}
soma__

