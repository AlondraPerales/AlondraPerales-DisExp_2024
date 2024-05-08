# Alondra Lizbeth Zuñiga Perales
# 2070702
# 08/05/2024


# Ingresar datos ----------------------------------------------------------

# Ingresar datos del diseño aleatorio
# 5 tratamientos germinativos
# 4 repeticiones cada tratamiento

germ <- c(3, 3, 4, 2, 7, 8, 7, 6, 8, 9, 8, 7,
          6, 7, 7, 6, 3, 2, 1, 3)

trat <- gl(5, 4, 20, labels = c ("Ctrl", "EM", "Ra4h", "AG", "AC"))

Exper <- data.frame(trat, germ)

boxplot(Exper$germ ~ Exper$trat, col = "blue",
        xlab = "Tratamientos", ylab = "Germinacion (%)")

# Revisar normalidad
shapiro.test(Exper$germ)

# Revisa la igualdad de varianzas
bartlett.test(Exper$germ, Exper$trat)

# Media general
MG <- mean(Exper$germ)

med.trat <- tapply(Exper$germ, Exper$trat, mean)
med.trat

var.trat <- tapply(Exper$germ, Exper$trat, var)
var.trat

Exper$SC <- (Exper$germ - MG)^2

# Suma de cuadrados del experimento Sctot
Sctot <- sum(Exper$SC)
Sctot

# Suma de cuadrados del experimento

SCtrat <- sum((med.trat-MG)^2 * 4)
SCtrat

# Suma de cuadrado del error
Sctot - SCtrat

SCtrat/4

9.7/15

26.2/0.6466667


# Anova usando funcion aov

Exp.aov <- aov(Exper$germ ~ Exper$trat)
summary(Exp.aov)

# Prueba de tukey ya que existen diferencias de los tratamientos de germinacion
 TukeyHSD(Exp.aov)
plot(TukeyHSD(Exp.aov)) 
