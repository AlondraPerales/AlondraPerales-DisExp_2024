# Alondra Lizbeth Zuñiga Perales
# 29/04/2024
# 2070702



# Importar datos ----------------------------------------------------------

# utilizar funcion read.csv sirve para importar datos

cr <- read.csv("cedro.csv", header = TRUE)





# Revision de datos -------------------------------------------------------

mean(cr$diametro)
mean(cr$altura)
mean(cr$diametro); sd(cr$altura)

sd(cr$diametro); sd(cr$altura)
range(cr$diametro)


fivenum(cr$diametro)



# Representacion grafica --------------------------------------------------


boxplot(cr$diametro)

boxplot(cr$altura, col="Red"
        ylim =c(10,30), ylab="altura (cm)",
        main = "Cedro rojo")

hist(cr$altura)

hist(cr$altura, xlab ="altura(cm)"
     main ="cedro rojo"
     ylab ="frecuencia"
     col="red")


stem(cr$altura)     
     
