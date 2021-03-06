library(plyr)

# Read CSV
auto = read.csv("C:/aulas/Analis-por-meio-de-BI-e-Analytics/exercicio_1/Auto.csv",header = T)

# Exibe os primeiros registros do dataframe
head(auto)
# Exibe os nome das colunas
names(auto)
# Exibe informa��es a respeito das colunas
summary(auto)

# Quais dos preditores s�o quantitativos e quais s�o qualitativos?

# Quantitativos: 'mpg', 'cylinders', 'displacement', 'weight', 'acceleration', 'year', 'origin'
# Qualitativos: 'horsepower', 'name'
quantitativos_names <- list('mpg', 'cylinders', 'displacement', 'weight', 'acceleration', 'year', 'origin')
quantitativos <- list(auto$mpg, auto$cylinders, auto$displacement, auto$weight, auto$acceleration, auto$year, auto$origin)
qualitativos_names <- list('horsepower', 'name')
qualitativos <- list(auto$horsepower, auto$name)

# Qual � o range de cada preditor quantitativo?
x = 1
for(i in quantitativos){
  print(paste(quantitativos_names[x], range(i)))
}

#Qual � a m�dia e o desvio padr�o de cada vari�vel preditora?
x = 1
for(i in quantitativos){
  print(paste(quantitativos_names[x], ' -> M�dia: ', mean(i), 'Desvio padr�o: ', sd(i)))
  x = x + 1
}

x = 1
for(i in qualitativos){
  print(paste(qualitativos_names[x], ' -> M�dia: ', mean(i), 'Desvio padr�o: ', sd(i)))
  x = x + 1
}

#Suponha que desejamos prever a milhagem de g�s (mpg) com base em outrasvari�veis. Quais vari�veis podem ser �teis para essa previs�o? Justifique suaresposta

x = 1
for(i in quantitativos){
  scatter.smooth(x=i, y=auto$mpg, main=quantitativos_names[x])
  x = x + 1
}

x = 1
for(i in qualitativos){
  scatter.smooth(x=i, y=auto$mpg, main=qualitativos_names[x])
  x = x + 1
}
