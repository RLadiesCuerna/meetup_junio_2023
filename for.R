###### for: tablas de multiplicar


############### tabla de multiplicar ################
num <- 5
for (i in 1:10) {
  cat(num, "*", i, "=", num*i, "\n")
}




############### tabla de multiplicar ################
############### guardando resultado  ################
resultado <- c()
for (i in 1:10) {
  resultado <- c(resultado, num*i)
}




############### tablas de multiplicar ################
###############       for anidado     ################
tablas <- 1:10
for (i in 1:10) {
  for (j in tablas) {
    cat(j, "*", i, "=", i*j, "\n") 
  }
}




############### tablas de multiplicar ################
############### guardando resultado  #################
mis_tablas <- matrix(0, 10, 10)

for (i in 1:dim(mis_tablas)[1]) {
  for (j in 1:dim(mis_tablas)[2]) {
    mis_tablas[i, j] <- i * j
  }
}






###############     otro ejemplo     ################
############·     serie de fibonacci   ##############
a = 0
b = 1

###############    for   ################
a = 0
b = 1
for (i in 1:10) {
  a <- a + b 
  b <- a - b 
  cat("El número de la posición", i, "es", a, "\n")
}

############### for 
############### guardando resultados
a = 0
b = 1
serie_fibonacci <- c()
for (i in 1:100) {
  a <- a + b 
  b <- a - b 
  serie_fibonacci <- c(serie_fibonacci, a)
  cat("El número de la posición", i, "es", a, "\n")
}


############### for para calcular la razón aurea desde la 
# secuencia de Fibonacci

ra <- c()
for (i in seq_along(serie_fibonacci)) {
  ra <- c(ra, serie_fibonacci[i] / serie_fibonacci[i-1])
  print(serie_fibonacci[i] / serie_fibonacci[i-1])
}




############### Función: serie de Fibonacci
serie_fb <- function(a = 0, b = 1) {
  print("¿Cuántos números de serie Fibonacci quieres?: ")
  nf <- scan(n = 1)
  cat("Los", nf, "primeros números de la sucesión de Fibonacci son:", "\n")
  for (i in 1:nf) {
    a <- a + b
    b <- a - b
    cat("El número de la posición", i, "es", a, "\n")
  }
}







######################################################
#####################  break #########################

for(i in 1:10) {
  print(i)
}


for(i in 1:10) {
  if(i == 3) {
    break
  }
  print(i)
}

######################################################
#####################  next  #########################

for(i in 1:10) {
  if(i == 3) {
    next
  }
  print(i)
}
