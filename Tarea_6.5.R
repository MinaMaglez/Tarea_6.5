---
title: "Tarea 6.5"
output: html_notebook
author: Carmina Martínez González
---

#Analisis de componentes principales con discriminantes para un concatenado de CoIII-Cyt B de 10 poblaciones del complejo C. hemilopha (Datos propios)

#Paso 0: Activamos las librerias necesarias

```{r}
require(ape)
require(adegenet)
```

#Paso 1: Cargamos los datos

```{r}
micros <- read.genepop("../Datos/GenePop/micros.gen", ncode=2L)
```

#Paso 2: Hacemos una prueba del calculo de los componentes principales. En esta prueba aparece una grafica similar a una curva de acumulacion, a partir del punto de inflexión con "ojimetro" probamos un numero de componentes principales que nos retenga la maxima variacion, y despues seleccionamos el numero de eigenvalores (Yo coloco los valores que utilice en mi prueba para que salga la grafica)

```{r}
discriDePca<-dapc (micros, n.pca = 17, n.da = 2) 
scatter (discriDePca)
```

Paso 3: Buscamos la optimización en el número de componentes a utilizar

```{r}
optim.a.score (discriDePca)
```

Paso 4: Recalculamos todo basados en el numero optimo de componentes principales que nos da R

```{r}
discriDePca<-dapc (micros, n.pca = 7, n.da = 2)
scatter (discriDePca)
```
