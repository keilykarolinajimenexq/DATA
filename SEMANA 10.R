
#SELECCIONAR DATA TRABAJAR
data <- read_csv("C:/Users/KAROLINA/OneDrive/Documentos/estadistica/bac_aguda.csv")
bac_aguda <- read_csv("C:/Users/KAROLINA/OneDrive/Documentos/estadistica/bac_aguda.csv")

#MEDIA ARITMETICA
mean(bac_aguda$edad, na.rm = TRUE)

#MODA
# MODA
moda_edad <- names(sort(table(bac_aguda$edad), decreasing = TRUE))
moda_edad[1]

#MEDIA
# MEDIANA
median(bac_aguda$edad, na.rm = TRUE)

