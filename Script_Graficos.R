########################################### GRÁFICOS

dados <- data.frame(trees)
?trees

cic_cm <- dados$Girth*2.54                 # Transformar para centímetro
altura_m <- dados$Height*0.3048            # Transformar para metro
vol_m3 <- dados$Volume/35.315              # Transformar para metro cúbico
dap_cm <- cic_cm/pi                        # obter o diâmetro

# Juntar esses novos vetores ao data frame "dados"
dados <- data.frame(dap_cm, altura_m, vol_m3)

#### Comando mais simples usado na criação de gráficos no R ###
### plot() ###

?plot()

plot(x = dap_cm, y = vol_m3)

#Argumento type = formatos de pontos no gráfico
plot(dap_cm, vol_m3, type="l")     # especifica o tipo de gráfico = line
plot(dap_cm, vol_m3, type="o")     # especifica o tipo de gráfico = pontos com linhas
plot(dap_cm, vol_m3, type="b")     # especifica o tipo de grafico = outro ponto c/ linha

### Adicionando título: main = "Título entre aspas"

plot(dap_cm, vol_m3, type="o", main="Curso do R")

### Subtítulo no gráfico #
plot(dap_cm,vol_m3,type="o",main="Curso do R",
     sub="Árvores de Cerejeiras")

plot(dap_cm,vol_m3,
     type="o",
     main="Curso do R",
     sub="Árvores de Cerejeiras", 
     xlab="DAP (cm)",
     ylab="Vol (m³)"
     )


## Outra forma de adicionar título #
plot(dap_cm,vol_m3,type="o",xlab="",ylab="")

#Utilizando o comando de baixo nível title()
title("Relação Volume x DAP",xlab="DAP (cm",ylab="Volume (m³)")


#### Adicionando quebra de linha no título - \n
plot(dap_cm,vol_m3,type="o",main="Relação \n Volume x DAP")


### Alterando o tipo de ponto, utilizando o argumento pch= ###
?par
plot(dap_cm,vol_m3,pch=20)

plot(dap_cm,vol_m3,pch="M") # Também podem ser utilizadas letras

?points  # Para ver a lista de tipos de ponto (pch)

### Alterando tipo de linha com o argumento "lty=", que vai de 0 a 6
plot(dap_cm,altura_m,type="o",pch=20, lty=1)

### Alterando a largura da linha com o argumento "lwd="
plot(dap_cm,altura_m,type="o",pch=20,lty=1,lwd=2)

### Alterando a cor do ponto e linha com o argumento col="Cor em inglês entre aspas"
plot(dap_cm,vol_m3,pch=0,col="lightblue")
plot(dap_cm,vol_m3,type="o",pch=19,lty=1,lwd=2,col="brown")

### Alterando cores dos títulos e eixos com "col.main" e "col.lab"
plot(dap_cm,vol_m3,type="o",main="Relação \n Volume x DAP",xlab="DAP",
     ylab="Vol (m³)",col.main="red",col.lab="darkblue")


### Alterando as cores dos números dos eixos com "col.axis"
plot(dap_cm,vol_m3,type="o",main="Relação \n Volume x DAP",xlab="DAP",
     ylab="Vol (m³)",col.main="red",col.lab="darkblue",col.axis="green")

### Alterando cores com função de baixo nível title()
plot(dap_cm,vol_m3,type="o",xlab="",ylab="")
title("Relação Volume x DAP",col.main="purple")
title(xlab="Diametro (cm)",ylab="Volume (m³)",col.lab="green4")


### Alterando os limites dos eixos com xlim e ylim

plot(dap_cm,vol_m3,pch=20,col="red",
     xlim=c(0,20),
     ylim=c(0,3),
     main="Relação \n Volume x DAP")

### Alterando utilizando o min e max das variáveis
plot(dap_cm,vol_m3,pch=20,col="red",
     xlim=c(min(dap_cm),max(dap_cm)),
     ylim=c(min(vol_m3),max(vol_m3)),
     main="Relação \n Volume x DAP")


### Adicionando eixos com a função axis()
plot(dap_cm,vol_m3, pch=0,col="red",axes=F)

axis(1,seq(min(dap_cm),max(dap_cm),1.2))
axis(2,seq(min(vol_m3),max(vol_m3),0.4))
# Sendo que 1 = inferior, 2 = esquerda, 3 = superior e 4 = direita


##### Alterando o formato das bordas dos gráficos 
### Com o comando bty, que pode ser "o","l","7","c","u","]" e "s"
plot(dap_cm,vol_m3,bty="l")

### Também pode ser utilizando o comando box()
plot(dap_cm,vol_m3,bty="n")
box(which="plot",lty=2,bty="l",lwd=5)


### Alterando a orientação dos números dos eixos com o argumento "las"
plot(dap_cm,vol_m3,las=3)
plot(dap_cm,vol_m3,las=2)

#Alterando o tamanho dos pontos com o argumento "cex"
plot(dap_cm,vol_m3,pch=20,cex=1.5)

#Alterando o tamanho dos números dos eixos com o argumento "cex.axis"
plot(dap_cm,vol_m3,pch=20,cex.axis=1)
plot(dap_cm,vol_m3,pch=20,cex.axis=1.5)

# Alterando o tamanho do título com o argumento "cex.main"
plot(dap_cm,vol_m3,pch=20,cex.main=1,main="Título")
plot(dap_cm,vol_m3,pch=20,cex.main=2,main="Título")

# Alterando o tamanho do rótulo dos eixos
plot(dap_cm,vol_m3,pch=20,xlab="dap",ylab="vol",cex.lab=1)
plot(dap_cm,vol_m3,pch=20,xlab="dap",ylab="vol",cex.lab=2)



########################### HISTOGRAMAS############################
### comando hist() ###

hist(dap_cm)         # Histograma
table(dap_cm)        # Frequência absoluta de cada valor

# Argumentos do comando hist()
?hist

hist(dap_cm,right=TRUE)    #Fechado à direita
hist(dap_cm,right=FALSE)   #Aberto à direita

x <- c(2,2,2,3,4,4,5,6,7,7,7,8)
hist(x,right=TRUE)
hist(x,right=FALSE)

hist(x,right=TRUE,
     include.lowest=FALSE,
     breaks=1:8) #Intervalo entre as classes

d <- hist(dap_cm) # Além do histograma, também fornece informações 
d

#alterando cores das barras e bordas das barras
hist(dap_cm,col="green",border="blue")

### Mostrando probabilidades #
hist(dap_cm,probability=TRUE,ylim=c(0,1))

### Intervalo entre as classes
hist(dap_cm,
     col="red4",
     probability=TRUE,
     breaks=c(c(min(dap_cm),8),c(8,10),c(10,13),c(13,max(dap_cm))),
     ylim=c(0,0.25))

### Especificando o número de classes
hist(dap_cm,nc=10)
hist(dap_cm,nc=3)


############################### GRÁFICO DE PIZZA ###########################
######### pie()
?pie

x <- d$density
x

names(x) <- c("Probabilidade Classe 1","Probabilidade Classe 2","Probabilidade Classe 3",
              "Probabilidade Classe 4","Probabilidade Classe 5","Probabilidade Classe 6")


pie(x)
pie(x,col=c("purple","violetred1","green3",
            "cornsilk","cyan","white"))

# Em escala de cinza
pie(x,col=gray(seq(0.4,1.0,length=6)))

# Alterando a direção do gráfico
pie(x,clockwise=TRUE)
pie(x,clockwise=FALSE)


# Alterando o raio do gráfico
pie(x,radius=1)
pie(x,radius=1.2)
pie(x,radius=0.8)



############################# GRÁFICO BOXPLOT ################################
# função boxplot()
?boxplot


# Vetor de dados
iris <- data.frame(iris)
?iris

boxplot(Sepal.Width~Species,data=iris)
boxplot(Petal.Width~Species,data=iris)

# Alterando cores
boxplot(Sepal.Width~Species,data=iris,col=c("green","blue","red4"))


# Plotando outliers
boxplot(Sepal.Width~Species,data=iris,col=c("green","blue","red4"),outline=TRUE)
boxplot(Sepal.Width~Species,data=iris,col=c("green","blue","red4"),outline=FALSE)


# Mudando orientação do boxplot
boxplot(Sepal.Width~Species,data=iris,col=c("green","blue","red4"),outline=TRUE,
        horizontal=TRUE)


### Mudando a largura de cada caixa com o argumento "varwidth=TRUE"
boxplot(Sepal.Width~Species,data=iris,
        col=c("green","blue","red4"),
        outline=TRUE,
        varwidth=TRUE)  # no caso, não muda nada pois é a mesma quantidade de dados para as 3 espécies


### Adicionando "algo" a um gráfico existente
x <- 1:20
y <- x^2

plot(x,y,pch=19)

# Adicionando pontos - points()

points(rev(x),y)
plot(x,y,pch=19)
points(rev(x),y,pch=12)

# Adicionando linhas - lines()

plot(x,y,pch=19)
lines(x,400-y,col="red")
lines(x,200-y,col="blue")
lines(x,100-y,col="blue",lwd=3)

plot(x,y,pch=19)
lines(x,400-y,col="red",lty=2)

title("Plot")

# Adicionando retas
plot(x,y,pch=19)
abline(0,10)  # passa pelo 0 e tem inclinação de 10 graus
abline(h=200,col="red4") # Reta horizontal passando por y=200 na cor vermelha
abline(v=10,col="yellow",lty=3,lwd=5) # Reta vertical passando por x=10 na cor amarela, tracejada



#### Adicionando texto ###
plot(x,y,pch=19)
text(10,300,"olá")
text(16,100,"Curso de R")



##### Vários gráficos em uma mesma janela

op <- par(mfrow=c(2,2)) #Duas linhas e duas colunas
plot(dap_cm,vol_m3,pch=14,col="green")
plot(dap_cm,vol_m3,type="l",lty=5,lwd=4)
boxplot(Sepal.Width~Species,data=iris)
hist(dap_cm)

par(op)
plot(dap_cm,vol_m3,pch=14)

### Alterando margens
op <- par(mfrow=c(2,2),mar=c(2,2,3,4))
plot(dap_cm,vol_m3,pch=14,col="green")
plot(dap_cm,vol_m3,type="l",lty=5,lwd=4)
boxplot(Sepal.Width~Species,data=iris)
hist(dap_cm)

par(op)
plot(dap_cm,vol_m3,pch=14)


par(mar=c(4,4,5,1))
plot(dap_cm,vol_m3)
par(mar=c(6,1,10,8)) # Inferior, Esquerda, Superior, Direita
plot(dap_cm,vol_m3)

