library(plyr)

# Read CSV
auto = read.csv("C:/aulas/Analis-por-meio-de-BI-e-Analytics/exercicio_1/Auto.csv",header = T)

# Quais dos preditores s�o quantitativos e quais s�o qualitativos?
count(auto, vars= 'id')

#Qual � o range de cada preditor quantitativo?

#Qual � a m�dia e o desvio padr�o de cada vari�vel preditora?

#Suponha que desejamos prever a milhagem de g�s (mpg) com base em outrasvari�veis. Quais vari�veis podem ser �teis para essa previs�o? Justifique suaresposta