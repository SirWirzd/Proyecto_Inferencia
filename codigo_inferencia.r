#Proyecto Inferencia

#Integrantes

#Gianfranco Astorga
#Jean Lucas Peñaloza
#Diego Godoy

library(readr)
df <- read_delim("GitHub/Proyecto_Inferencia/PROVLOGIS.csv", 
                        delim = ";", escape_double = FALSE, trim_ws = TRUE)
View(df)

# Visualizar las primeras filas del DataFrame para verificar la estructura de los datos
head(df)

# Obtener información básica del DataFrame
str(df)

# Calcular estadísticas descriptivas
summary(df)

# Crear un gráfico de caja para identificar valores atípicos (por ejemplo, en la variable 'Calidad')
boxplot(df$Calidad)

# Si es necesario, puedes eliminar valores atípicos. Por ejemplo, para eliminar valores atípicos en la variable 'Calidad':
# df <- df[df$Calidad >= quantile(df$Calidad, 0.05) & df$Calidad <= quantile(df$Calidad, 0.95), ]

# Histograma de una variable (por ejemplo, 'Calidad')
hist(df$Calidad, breaks = 10, col = 'lightblue', border = 'black', xlab = 'Calidad', main = 'Distribución de Calidad')

# Diagrama de caja para otra variable (por ejemplo, 'Agilidad en la entrega del servicio')
boxplot(df$agilidadentrega)

