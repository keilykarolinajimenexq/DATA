CALCULAR LAS MEDIDAS DE DISPERSIÓN
(VARIANZA, DESVIACIÓN ESTÁNDAR, RANGO,RANGO INTERCUARTÍLICO) Y DE POSICIÓN (CUARTILES), SCRIPT PARA VISUALIZAR LAS 6
PRIMERAS FILAS, Y PARA PODER VISUALIZAR UN RESUMEN DE DICHAS MEDIDAS.

# CARGAR DATA
bac_aguda <- read_csv("C:/Users/KAROLINA/OneDrive/Documentos/estadistica/bac_aguda.csv")

# VISUALIZAR LAS 6 PRIMERAS FILAS
head(bac_aguda)

#Seleccionar la variable a analizar

x<- bac_aguda$edad

# MEDIDAS DE DISPERSIÓN
varianza <- var(x, na.rm = TRUE)
desviacion_estandar <-sd(x, na.rm = TRUE)

#rango
rango<-range(x, na.rm = TRUE)

# Rango intercualitativo
rango_intercuartilico <- IQR(x, na.rm = TRUE)

#Cuartiles
cuartiles <- quantile(x, probs = c(0.25, 0.5, 0.75), na.rm = TRUE)

# RESUMEN COMPLETO
summary_medidas <- list(
  Varianza = varianza,
  Desviacion_Estandar = desviacion_estandar,
  Rango = rango,
  Rango_Intercuartilico = rango_intercuartilico,
  Cuartiles = cuartiles
)

# MOSTRAR RESUMEN
summary_medidas
