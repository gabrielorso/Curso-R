########################################
#      Introdução à Linguagem R        #
#                                      #
#                Gabriel Agostini Orso #
########################################


# 1. Tudo no R é um objeto
# 2. Todo objeto no R possui uma classe
# 3. Se possui uma classe, coisas podem ser feitas com esse objeto.
# 4. Tudo que é feito no R é feito por meio de uma função.


#__________________________________________________________________________
#__________________________________________________________________________


# 1. Vetores --------------------------------------------------------------


# Criando um vetor com a função c()
dap <- c(12.4, 7.9, 8.8, 8.6, 12, 7.6, 8.8, 6, 8.2, 8.7, 9.2, 8.3,
        20.6, 6.6, 7.1, 7.1, 7.2, 7.1, 10.3, 7.2, 8.2, 9.8, 11.1,
        10.7, 9.5, 8, 9.6, 7.8, 7.9, 19.9, 8.3, 12.9, 13, 9, 11.1,
        6.9, 14.7, 13.5, 6.9, 6.4, 7.2, 8.2, 5.5, 14.4, 7, 12.1,
        10.6, 9.7, 12.5, 12.3, 16.3, 9.6, 11.1, 10.3, 7.6, 7.1,
        6.9, 17.5, 7.1, 8.2, 8.3, 7.9, 8.1, 12, 8.9, 14.1, 10.6, 9,
        8.5, 5.6, 9.5, 10.4, 11.1, 9.2, 8.6, 13.4, 9.2, 13.1, 6.9,
        8.8, 12.5, 10.5, 8.4, 4.9, 6.7, 9.8, 12.3, 12.7, 8.2, 8.3,
        12.9, 8.8, 6.4, 6)

# vetor é a estrutura mais utilizada na linguagem R.
# Os elementos de um vetor são separados por vírgula ','. Note que o marcador decimal é o ponto '.'

dap

# Qual é a classe do objeto 'dap'?
class(dap)

# se é um vetor numérico, posso somar elementos ao vetor
dap + 10
dap * 10  # ou multiplicar
dap / 10  # ou dividir, etc...
dap - 10

d2 <- dap**2

# Ou até mesmo transformar o diâmetro em área transversal
dap^2 * pi/40000

# Tudo no R é um objeto, logo, dap**2*pi/40000 também é um objeto
class(dap**2*pi/40000)  # é um vetor numérico também

g <- dap**2*pi/40000
g

# Somar todos elementos do vetor
sum(dap)

sum(g)
sum(dap**2*pi/40000)  
# veja que o objeto g nada mais é que um 'nome' para o vetor dap**2*pi/40000
# assim como o objeto dap é apenas um 'apelido' ou 'nome' para aquele vetor enorme de diâmetros


# Média de um vetor
mean(dap)
mean(g)

# Comprimento de um vetor
length(dap)
n = length(dap)  # a atribuição pode ser feita com '<-' ou '=', mas '<-' é recomendada na literatura.

n

# Teste t aplicado ao vetor
t.test(dap, mu = 15) 


# Medidas descritivas dos vetores dap e g
summary(dap)
summary(g)

# Criando outro vetor
classes <- c("Classe II", "Classe II", "Classe II","Classe I","Classe III","Classe II","Classe III",
             "Classe I","Classe II","Classe III","Classe II","Classe I","Classe I","Classe II",
             "Classe I","Classe I","Classe II","Classe II","Classe II","Classe I","Classe I",
             "Classe II","Classe II","Classe I","Classe III","Classe I","Classe I","Classe III",
             "Classe II","Classe III","Classe I","Classe I","Classe I","Classe II","Classe I",
             "Classe I","Classe III","Classe I","Classe I","Classe I","Classe III","Classe I",
             "Classe II","Classe III","Classe II","Classe II","Classe I","Classe I","Classe I",
             "Classe I","Classe I","Classe I","Classe II","Classe I","Classe II","Classe II",
             "Classe I","Classe I","Classe II","Classe II","Classe II","Classe III","Classe III",
             "Classe II","Classe III","Classe II","Classe I","Classe I","Classe I","Classe III",
             "Classe I","Classe II","Classe III","Classe II","Classe III","Classe I","Classe II",
             "Classe I","Classe I","Classe I","Classe II","Classe I","Classe III","Classe II",
             "Classe II","Classe I","Classe III","Classe II","Classe I","Classe III","Classe II",
             "Classe I","Classe III","Classe II","Classe I","Classe III","Classe I","Classe I",
             "Classe II","Classe II")



length(classes)

mean(classes)  # Faz sentido tirar a média de um texto?

t.test(classes, mu = 15)  # Faz sentido realizar um teste de hipótese em um texto?

#__________________________________________________________________________________


# 1.1 Tipos ou modos básicos ----
# Trabalhamos normalmente com 4

# numérico ----
5.5
2.2
class(5.5)







# inteiro ----
5L
class(5L)


# Mas qual a vantagem de números inteiros?
float <- rep(5.5555555, 1000000)
int <- rep(5L, 1000000)

object.size(float)/1024/1024  # MB
object.size(int)/1024/1024  # MB






# caractere ----
# Basicamente texto

'abceder'
"Curso de R"

texto <- 'Curso de R'

texto

# caracteres são sempre representados entre aspas, sejam elas simples ' ou duplas ".
# Apenas atente para que seja usado o mesmo tipo de aspa para iniciar e terminar o caractere


# Existe uma infinidade de funções para trabalhar com caracteres, que não veremos neste curso introdutório.
# Por exemplo:
nchar(texto)







# lógico/booleano ----
# Aparece em qualquer operação lógica
TRUE
FALSE


dap > 10

dap10 <- dap > 10

class(dap > 10)
class(dap10)

# Numericamente, TRUE = 1 e FALSE = 0:
as.numeric(dap > 10)
as.numeric(dap10)

# Isso permite verificar, por exemplo, quantas árvores tem DAP > 10 cm
sum(dap > 10)/n


# Operadores lógicos são muito muito importantes e úteis.
# Outros operadores são
classes == 'Classe I'  # Igualdade '=='
dap <= 20              # Menor ou igual '<='. Maior ou igual ">="

classes != 'Classe III'  # Diferente '!='








###__________________________________________________________________________________

# 1.2 indexação e filtragem de vetores ----
# Indexação nada mais é que obter/apontar a posição de elementos dentro do vetor
# Por exemplo, o diâmetro que está na posição número 10 do vetor 'dap'
dap[10]


# Será que o diâmetro da 50ª árvore é maior que 10 cm?
dap[50] > 10


# Para selecionar dois ou mais elementos dentro de um vetor:
dap[10, 20, 30]  # Errado
dap[c(10, 20, 30)]  # Correto

# Veja que o operador colchete [] aceita somente um argumento
# [10, 20, 30] são três argumentos dentro dos colchetes: 10, 20, 30
# [c(10,20,30)] é apenas um argumento dentro dos colchetes: o vetor c(10, 20, 30)

# Em rigor, vetores possuem somente uma dimensão, portante o operador [] aceita somente um argumento

# Sempre que quisermos filtrar um vetor, devemos informar dentro dos colchetes
# um vetor que informe os índices dos elementos que queremos obter.
# No caso, queremos mostrar os daps de índice 10, 20 e 30


# Outra forma muito utilizada de filtragem, é filtragem por condição lógica
dap > 10
# Veja que dap > 10 é um vetor. Podemos atribuir um objeto chamado 'filtro'
filtro <- dap > 10
filtro

# Se passarmos um vetor contendo valores lógicos dentro dos colchetes
# Isso servirá como um filtro
dap[filtro]

dap[dap > 10]  # Podemos passar a condição diretamente dentro dos colchetes
# Isso economiza linhas de código

# Tenha em mente também que 'dap > 10' é um único elemento: um vetor
# Isso satisfaz a condição do operador colchete [], de receber somente um argumento


# Podemos também reescrever elementos dentro de um vetor usando indexação.
# Por exemplo, digamos que o dap da 20ª árvore esteja errado, e o valor correto é 17.2
dap[20]

# Podemos arrumar isso atribuindo um novo valor para esse elemento específico dentro do vetor
dap[20] <- 17.2

dap[20]







#__________________________________________________________________________
#__________________________________________________________________________


# 2. Data frames ----------------------------------------------------------

# Data frame é a principal classe de objeto na linguagem R.
# Em termos práticos, é similar à uma planilha do excel, onde cada coluna 
# é uma variável diferente, e o nome das variáveis ficam na primeira linha
# da planilha.

# A linguagem já vem com vários data frames de exemplo, vamos utilizar um deles.
data("Loblolly")
help("Loblolly")
Loblolly  

# 'Loblolly', 'treering', 'trees', são bancos de dados florestais que já acompanham o R


# Vamos chamar isso de 'dados', só para ser mais fácil de escrever
dados <- Loblolly


# Funções úteis ----
# Para visualizar um data frame de maneira similar à uma planilha:
View(dados)


# As dimensões de um data frame são
dim(dados)
# 84 linhas por 3 colunas

# Também podemos saber o número de linhas e colunas da seguinte forma:
nrow(dados)
ncol(dados)


# Podemos saber o nome das colunas do data frame
names(dados)


# Verificar estrutura do objeto (Essa função é muito útil)
str(dados)


head(dados)  # a função head() imprime as primeiras observações do data frame
tail(dados)  # tail() imprime as últimas observações do data frame

head(dados, 10)  # Imprime as 10 primeiras observações


# Acessando vetores dentro do data frame ----
# Para acessar um vetor dentro de um data frame, utilizamos o operador Cifrão $
dados$height

class(dados$height)  # Veja que dados$height é um vetor


# Portanto perceba que um data frame é simplesmente uma coleção de vetores,
# que podem ser de diferentes tipos, colados lado a lado

# Se dados$height é um vetor, podemos fazer tudo que aprendemos com vetor

# Média da altura
mean(dados$height)

# desvio padrão e variância
sd(dados$height)
var(dados$height)


mean(dados)  # Faz sentido tirar a média de uma 'planilha'? 

# Cuidado! O vetor 'height' só existe dentro do data frame 'dados'
height
dados$height

# Podemos criar um objeto 'height' fora do data frame 'dados', e ele não terá 
# nenhuma relação com o objeto dados$height
height <- c('Apenas', 'um', 'vetor', 'caractere')

height
dados$height



# Veja que dados$Seed, apesar de parecer numérico, não está sendo representado dessa forma pelo R
# Vimos isso usando a função str()
str(dados)
dados$Seed
mean(dados$Seed)


# Outra forma de acessar os elementos do data frame é por meio do operador colchete []
dados[7, 2]
# Veja que, para data frames, o operador [] precisa de 2 argumentos
# Isso acontece por que data frames possuem duas dimensões: linha e coluna
# Assim, o operador recebe dois argumentos [ linha , coluna]
# No exemplo acima, dados[7, 2] significa pegar a sétima linha e segunda coluna

# Para pegar mais elementos, se mantém a lógica dos vetores, mas aplicada em cada argumento
dados[c(10,13,15), c(1,2)]  # Linhas c(10,13,15), colunas c(1,2)
# Note que se colocarmos um índice de coluna fora dos limites do data frame, será gerado um erro
dados[c(10,13,15), c(1,3,4,6)]  # só temos até a terceira coluna


# Para selecionar toda a coluna, ou toda a linha, deixamos o argumento vazio
dados[, 1] # Seleciona a primeira coluna, e pega todas as linhas. Lembre de [linha, coluna]
# Pense que há um filtro para coluna (pegar só a primeira), mas não há filtro de linha, portanto todas serão retornadas


# Podemos também selecionar colunas da seguinte forma
dados[, 'height']



# Criar data frames ----
# Data frames são criados com a função data.frame() e passando vetores dentro da função
# Vamos criar um data frame com os vetores que criamos anteriormente 'dap' e 'classes'

dados2 <- data.frame(dap, classes)
# Obtivemos um erro que informa que os comprimentos dos vetores são diferentes (94 e 100, respectivamente)
# Ou seja, em um data frame, todas as colunas (ou vetores) precisam necessariamente ter o mesmo comprimento.

# Vamos arrumar o vetor dap, para que tenha a mesma quantidade de elementos que o outro
dap2 <- c(dap, 10, 10, 10, 10, 10, 10)

# veja que 10, 10, 10, 10, 10, 10 pode ser reescrito como
rep(x = 10, times = 6)

rep10 <- rep(10, 6)

# Portanto podemos criar o objeto dap2 também como
dap2 <- c(dap, rep10)
dap2

# Agora criando nosso data frame
dados2 <- data.frame(dap2, classes)
dados2
str(dados2)
head(dados2)


dados2$dap2
dados2$classes


# Exemplo - Análise de Variância ----
# Vamos avaliar se há diferença entre a procedência "Seed" na altura das árvores de pinus, do nosso data frame dados
head(dados)

modelo <- aov(height ~ Seed, data = dados)
resultado <- anova(modelo)

# Veja que a função 'puxa' os objetos height e Seed do data frame que passamos 'dados'.
# Uma maneira análoga de informar seria
modelo <- aov(dados$height ~ dados$Seed)
anova(modelo)


# Aparentemente, não há efeito da procedência da semente na altura das árvores,
# Mas veja que há a variável idade 'age', que pode representar uma fonte de variação
modelo2 <- aov(height ~ as.character(age) + Seed, data = dados)
anova(modelo2)

# De forma similar
modelo2 <- aov(dados$height ~ as.character(dados$age) + dados$Seed)

resultado2 <- anova(modelo2)

plot(modelo2)


# Teste Post-hoc
TukeyHSD(x = modelo2, which = 'Seed', ordered = TRUE)


#__________________________________________________________________________
#__________________________________________________________________________


# 3. Importando dados -----------------------------------------------------
# Raramente criaremos data frames a partir do zero, digitando os dados no R.
# A grande maioria das vezes iremos importar bancos de dados dos mais variados tipos

# Antes de importar, precisamos entender o que é diretório de trabalho
getwd()

#getwd() retorna um caractere contendo o endereço ou diretório de trabalho atual.
# Qualquer arquivo que tentemos importar para dentro do R, será buscado/procurado nesse local
# Quando abrimos um script no R, o diretório de trabalho é automaticamente definido para
# o local onde está o script.

# Você pode alterar o diretório de trabalho indo em Session > Set Working Directory > To Source File Location

# Para importar arquivos, usamos a família de funções read.*
# Existem read.csv(), read.csv2(), read.table(), read.delim(), read.delim2(), etc...
# Cada uma dessas funções é usada a depender do tipo de arquivo de dados

# Para arquivos .txt, usa-se read.table(), para arquivos .csv, usa-se read.csv() ou read.csv2()
?read.csv2()

dados <- read.csv2(file = 'dados.csv', header = TRUE, sep = ';', dec = ',')

# read.csv2() lê arquivos do tipo .csv, com separador de colunas ';', e marcador decimal ','

View(dados)



# Não é sugerido importar arquivos em formato de excel .xls, .xlsx, etc. Frequentemente dão problema



# Exemplo - Análise de Regressão ----
# A partir do banco de dados importado, vamos ajustar o modelo volumétrico de Schumacher-Hall

log_d <- log(dados$d)
log_h <- log(dados$h)
log_v <- log(dados$v)

# O modelo de Schumacher-Hall, na forma linear, tem valores das variáveis na escala logarítmica
# log(volume) - B0 + b1.log(dap) + b2.log(h)

modelo <- lm(log_v ~ log_d + log_h)

summary(modelo)
plot(modelo)

pred <- fitted(modelo)
res <- residuals(modelo)

plot(x = pred, y = res)
abline(h = 0, col = 'red')










