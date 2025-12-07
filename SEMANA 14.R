
# ==========================================
# ANALISIS UNIVARIADO COMPLETO EN R
# ==========================================

El análisis univariado es básicamente el punto de partida para entender una base de datos. 
Se enfoca en evaluar cada variable por separado para ver cómo se distribuye, si tiene valores raros 
y qué tan dispersa está la información. Es importante porque te ayuda a detectar errores, 
identificar patrones y decidir qué métodos estadísticos usar después según el tipo de variable. 
Al revisar medidas como la media, mediana, moda, varianza, dispersión, asimetría y curtosis, 
puedes tener una idea clara de cómo se comporta esa variable antes de pasar a análisis más complejos
En pocas palabras, este análisis te da el “mapa inicial” de tus datos y evita que tomes decisiones basadas 
en resultados engañosos.

library(readr)

# Cargar la base
bac_aguda <- read_csv("C:/Users/KAROLINA/OneDrive/Documentos/estadistica/bac_aguda.csv")
View(bac_aguda)

# Selecciona tu variable, por ejemplo edad
# Cambia 'edad' por la columna que necesites
x <- bac_aguda$edad

# MEDIA
media <- mean(x)

# MEDIANA
mediana <- median(x)

# MODA
moda <- as.numeric(names(sort(table(x), decreasing = TRUE))[1])

# VARIANZA
varianza <- var(x)

# DESVIACIÓN ESTÁNDAR
desv_estandar <- sd(x)

# RANGO
rango <- max(x) - min(x)

# ASIMETRÍA (cálculo sin paquetes)
asimetria <- mean((x - mean(x))^3) / sd(x)^3

# CURTOSIS (cálculo sin paquetes)
curtosis <- mean((x - mean(x))^4) / sd(x)^4

# RESULTADOS
resultados <- list(
  Media = media,
  Mediana = mediana,
  Moda = moda,
  Varianza = varianza,
  Desviacion_Estandar = desv_estandar,
  Rango = rango,
  Asimetria = asimetria,
  Curtosis = curtosis
)

resultados

#IMPORTANCIA 
  
  El análisis univariado es importante porque te permite entender a fondo cada variable 
  antes de hacer cualquier otro tipo de estudio. Te muestra cómo se comportan los datos, 
    si están bien distribuidos, si hay valores extremos que podrían distorsionar los resultados 
  y qué tan dispersa está la información. Gracias a esto puedes detectar errores, corregir problemas 
  y elegir correctamente qué métodos estadísticos usar después. En resumen, es la base que asegura que 
  tu análisis completo sea confiable, ordenado y respaldado por una comprensión real de los datos.
  
  # Cargar tu base
  library(readr)
  bac_aguda <- read_csv("C:/Users/KAROLINA/OneDrive/Documentos/estadistica/bac_aguda.csv")
  
  # Regresión simple
  modelo_simple <- lm(edad ~ mes, data = bac_aguda)
  
  # Resultados completos
  summary(modelo_simple)
  
  #REGRESIÓN LINEAL MÚLTIPLE
  
  modelo_multiple <- lm(edad ~ mes + sexo + leucocitos_sangre, data = bac_aguda)
  summary(modelo_multiple)
  
  #OBTENER COEFICIENTES, PREDICCIONES Y R²
  
  coef(modelo_simple)        # β0 y β1
  predict(modelo_simple)     # predicciones
  summary(modelo_simple)$r.squared   # R²
  
  #VER GRÁFICO DE REGRESIÓN SIMPLE
  
  modelo_simple <- lm(edad ~ mes, data = bac_aguda)
  plot(bac_aguda$mes, bac_aguda$edad, main="Edad vs Mes")
  abline(modelo_simple, col="blue")
  
  
