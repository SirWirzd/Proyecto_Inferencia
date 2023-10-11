#Proyecto Inferencia

#Integrantes

#Gianfranco Astorga
#Jean Lucas Peñaloza
#Diego Godoy

library(readr)
df <- read_delim("GitHub/Proyecto_Inferencia/PROVLOGIS.csv", 
                        delim = ";", escape_double = FALSE, trim_ws = TRUE)
View(df)

names(df) <- c("ID", "CPS","AES","FP","AP","IP","CP")

# Visualizar las primeras filas del DataFrame para verificar la estructura de los datos
head(df)

# Obtener información básica del DataFrame
str(df)

# Calcular estadísticas descriptivas
summary(df)

# Crear un gráfico de caja para identificar valores atípicos (por ejemplo, en la variable 'Calidad')
boxplot(df$CPS)

# Si es necesario, puedes eliminar valores atípicos. Por ejemplo, para eliminar valores atípicos en la variable 'Calidad':
# df <- df[df$Calidad >= quantile(df$Calidad, 0.05) & df$Calidad <= quantile(df$Calidad, 0.95), ]

# Histograma de una variable (por ejemplo, 'Calidad')
hist(df$CPS, breaks = 10, col = 'lightblue', border = 'black', xlab = 'Calidad', main = 'Distribución de Calidad')

# Diagrama de caja para otra variable (por ejemplo, 'Agilidad en la entrega del servicio')
boxplot(df$AES)


# Matrix de correlacion
correlation_matrix <- cor(df[, c("CPS", "AES", "FP", "AP", "IP", "CP")])
print(correlation_matrix)


plot(df$CPS, df$AES, 
     xlab = "Calidad percibida", ylab = "Agilidad en la entrega del servicio",
     main = "Gráfico de Dispersión: Calidad percibida vs. Agilidad en la entrega")

abline(lm(df$AES ~ df$CPS), col = "red")


plot(df$CPS, df$FP, 
     xlab = "Calidad percibida", ylab = "Flexibilidad en formas de pago",
     main = "Gráfico de Dispersión: Calidad percibida vs. Flexibilidad de pago")


abline(lm(df$FP ~ df$CPS), col = "red")


plot(df$CPS, df$AP, 
     xlab = "Calidad percibida", ylab = "Atencion del personal",
     main = "Gráfico de Dispersión: Calidad percibida vs. Atencion del personal")

abline(lm(df$AP ~ df$CPS), col = "red")


