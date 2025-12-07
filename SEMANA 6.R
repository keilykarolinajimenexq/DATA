
#COMO LIMPIAR UNA DATA PARA UTILIZAR UNA COLUMNA ESPECIFICA

#SELECCIONAR EN LA PESTAÑA SUPERIOR DERECHA IMORT DATASET Y SELECCIONAR FROM TEXT (READR)
#SELECCIONAR BROWSE PARA BUSCAR LA DATA
#IMPORTAR EL ARCHIVO ANTERIORMENTE DESCARGADO

library(readr)
diabetes <- read_csv("C:/Users/KAROLINA/OneDrive/Documentos/fundamentos II/ESTADISTICA KEILY/diabetes.csv")
View(diabetes)

#LIMPIAR DATA
data <- read_csv("C:/Users/KAROLINA/Downloads/diabetes.csv")

# Ver la base
View(data)

# Limpiar datos eliminando filas donde falte la columna insulina
data <- readr::read_csv("C:/Users/KAROLINA/OneDrive/Documentos/fundamentos II/ESTADISTICA KEILY/diabetes.csv")
data_limpia <- data[!is.na(data$insulina_2h), ]

# Cálculos específicos
mean(data$glucosa, na.rm = TRUE)
median(data$glucosa, na.rm = TRUE)
mean(data$imc, na.rm = TRUE)
var(data$imc, na.rm = TRUE)
