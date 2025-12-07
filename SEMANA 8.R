
#COMO INSTALAR UN PAQUETE EN RSTUDIO – REALIZA TU GRAFICO ESTADISTICO
# SELECCIONAR LA DATA A TRABAJAR
data <- read_csv("C:/Users/KAROLINA/OneDrive/Documentos/fundamentos II/ESTADISTICA KEILY/diabetes.csv")
diabetes <- read_csv("C:/Users/KAROLINA/OneDrive/Documentos/fundamentos II/ESTADISTICA KEILY/diabetes.csv")

# INSTALAR PAQUETES
library(readr)

hist(data$edad,
     main = "Histograma de Edad",
     xlab = "Edad",
     col = "lightblue",
     border = "magenta")
