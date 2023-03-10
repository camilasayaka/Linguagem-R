##### ME115 - Linguagem R #####
##### Nome: Camila Sayaka Hiura

# 1. Considere o c?digo a seguir para criar a matrix:
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

# 2. Crie a matrix Y de tamanho 10 ? 10 que contenha os valores de 1 a 100, 
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

# 3. O objeto data.frame pode ser pensado como uma matriz. Neste caso, sua indexa??o 
# pode ser feita atrav?s do indexador [,]. Execute o c?digo abaixo para carregar o 
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

# 4. O c?digo abaixo retorna "Nem todos os positivos". Por que?
x <- c (1, 2, -3, 4)
if (all (x> 0)) {
  print("Todos os positivos")
} else {
  print("Nem todos os positivos")
}
# Resposta: Pois, de acordo com o c?digo, se todos os elementos dentro do vetor x fossem 
# maior que zero, ele retornaria "Todos os positivos". No entanto, como o terceiro elemento 
# ? um n?mero negativo, o c?digo retorna "Nem todos os positivos".

# (a) Reescreva o c?digo tal que ele retorne "Todos os positivos". 
# Dica: utilize o operador de nega??o !.
x <- c (1, 2, -3, 4)
if (!all (x> 0)) {
  print("Todos os positivos")
} else {
  print("Nem todos os positivos")
}

# (b) Reescreva o c?digo tal que ele retorne uma frase "Nem todos s?o n?meros pares" 
# para o caso de haver algum n?mero ?mpar em x e caso contr?rio "Todos s?o n?meros pares". 
# Dica: use x \%\%2.
x <- c (1, 2, -3, 4)
if (all(x%%2==0)) {
  print("Todos s?o n?meros pares")
} else {
  print("Nem todos s?o n?meros pares")
}

# (c) Usando a fun??o any (utilize ?any para saber sobre ela) e o vetor x, reescreva o 
# c?digo para que a mensagem "Algum n?mero negativo" seja exibida caso existam n?meros 
# negativos em x e "Nenhum n?mero negativo" caso contr?rio.
x <- c (1, 2, -3, 4)
if (any(x<0)) {
  print("Algum n?mero negativo")
} else {
  print("Nenhum n?mero negativo")
}

# (d) Defina um vetor y tal que usando o c?digo em (b) ele retorne "Todos s?o n?meros pares".
set.seed(12345)
y <- sample(1:500, size = 10, replace = T) * 2
y
if (all(y%%2==0)) {
  print("Todos s?o n?meros pares.")
} else {
  print("Nem todos s?o n?meros pares")
}

# 5. Usando o c?digo da aula pr?tica 01 dado a seguir:
library(dslabs)
data(murders)
murder_rate <- murders$total / murders$population*100000

# execute o c?digo abaixo, o qual nos diz qual(is) estado(s) tem a taxa de assassinato 
# por 100.000 habitantes menor do que 0.5 pessoas.
ind <- which(murder_rate < 0.5)
if(length(ind) > 0){
  print(murders$state[ind])
} else{
  print("No state has murder rate that low")
}

# A seguir, usando o c?digo fornecido, encontre:
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

# 6. O controle de fluxo ifelse trabalha em vetores, como exemplificado no c?digo a seguir.
a <- c(0, 1, 2, -4, 5)
ifelse(a > 0, 1/a, NA)

# (a) Crie uma sequ?ncia de inteiros -10 a 120 e armazene. Utilizando ifelse, retorne a 
# raiz quadrada dos elementos que s?o maiores ou iguais a zero e NA caso contr?rio.
A <- -10:120
ifelse(A >= 0, sqrt(A), NA)

# (b) Utilizando a sequ?ncia criada em (a) e o comando ifelse, retorne 1 se o n?mero for 
# par e 0 caso contr?rio.
ifelse(A%%2==0, 1, 0)

# (c) Utilizando a sequencia criada em (a) e o comando ifelse, retorne o pr?prio n?mero 
# se este for divis?vel por 3 e NA caso contr?rio.
ifelse(A%%3==0, A, NA)

# 7. O comando for ? um comando de repeti??o. Considere os c?digos a seguir como exemplos.

# (a) Utilizando o data frame murders, considere a taxa de mortes por 100000 habitantes. 
# Calcule a m?dia da taxa de mortes e armazene na vari?vel media.
murder_rate <- murders$total / murders$population*100000
media = mean(murder_rate)

# (b) Calcule a m?dia da taxa de mortes para a regi?o Sul (South) utilizando um bloco de for, 
# como nos exemplos, e guarde na vari?vel media.south.
soma <- 0
num <- 0
for (i in 1:nrow(murders)) { 
  if (murders$region[i]=='South') {
    soma <- soma+murder_rate[i]
    num <- num+1
  }
}
media_south <- soma/num

# (c) Calcule a m?dia da taxa de mortes para regi?es que n?o sejam a regi?o "South" ou 
# "North Central" utilizando um ?nico bloco de repeti??o for e guarde na vari?vel 
# media.outras. Dica: use o c?digo do item (b) com operador de nega??o !.
soma2 <- 0
num2 <- 0
for (i in 1:nrow(murders)) {
  if (murders$region[i]!='South' & murders$region[i]!='North Central') {
    soma2 <- soma2+murder_rate[i]
    num2 <- num2+1
  }
}
media_outras <- soma2/num2

# (d) Imprima na tela o valor das vari?veis em (a), (b) e (c).
media
media_south
media_outras

# 8. Considere o exemplo de bloco de repeti??o aninhado do exerc?cio anterior. A seguir, 
# calcule a seguinte express?oe e imprima na tela o valor final de m.
m <- 0
for (i in 1:10) {
  for (j in 1:10) {
    m <- m + i*j
  }
}
m = m/100
m

# 9. Considere bloco de repeti??o usando o comando while.

# (a) Considere a sequ?ncia -108:88 e armazene-a em s. Utilizando o bloco de repeti??o 
# while, fa?a a soma dos valores de s at? que um valor positivo em s seja encontrado.
s <- -108:88
s
soma_ <- 0
k <- 1
while (s[k]<=0) {
  soma_ <- soma_ + s[k]
  k <- k+1
}
soma_

# (b) Usando s e o bloco de repeti??o while, fa?a a soma dos valores de s a partir do valor
# 88 at? que um valor negativo de s seja encontrado. Dica: voc? pode usar decremento de um 
# ?ndice.
soma__ <- 0
j <- length(s)
while (s[j]>=0) {
  soma__ <- soma__ + s[j]
  j <- j-1
}
soma__

