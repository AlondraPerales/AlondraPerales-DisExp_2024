# Alondra Zuñiga Perales
# 2070702
# 06/05/2024


# Importar datos ----------------------------------------------------------

library(readr) # Llamar la biblioteca o library 

file <- paste0("https://raw.githubusercontent.com/mgtagle/202_Analisis_Estadistico_2020/02680a60a88f56facda17fa38af265fb81f7f9f6/cuadro1.csv")

inventario <- read.csv(file)
tail(inventario)

mean(inventario$Diametro)
mean(inventario$Altura)


boxplot(inventario$Diametro ~ inventario$Especie)

boxplot(inventario$Altura ~ inventario$Especie)

boxplot(inventario$Altura ~ inventario$Clase, col = "Red",
        xlab = "Clase", ylab ="Altura (m)")



# Restricciones -------------------------------------------------------

sub1 <- subset(inventario, Diametro >= 15)
sub2 <- subset(inventario, Diametro >= mean(Diametro))
sub3 <- subset(inventario, Clase != "D")
boxplot(sub3$Diametro ~ sub3$Clase, col = "Green")

