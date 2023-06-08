##############  while


#############   no correr
i <- 0
while (i < 10) {
  i + 1
}



#############  while
#############  evitar que sea infinito


############# while and break
i <- 0
while (i < 10) {
  print(i)
  if (i == 5) {
    break
  }
  i <- i + 1
}
i



############# while and next
i = 0
while (i < 10) {
  i <- i + 1
  if (i == 3) {
    next
  }
  print(i)
}




############# while para verificación de contraseña
############# sin limite de intentos y qureremos saber a 
############# cuántos intentos se logro 
readline("Ingrese la contraseña")

contador <- 0
contrasena <- ""
while (contrasena != "rladies_cuernavaca") {
  contrasena <- readline("Ingrese la contraseña")
  contador = contador + 1
  if (contrasena != "rladies_cuernavaca") {
    print("Contraseña incorrecta")
    next
  }
  print("Bienvenid@")
}



############# while para verificacion de contraseña
############# con tres números de intentos
contador <- 0
contrasena <- ""

while (contrasena != "rladies_cuernavaca") {
  contrasena <- readline("Ingrese la contraseña")
  contador = contador + 1
  if (contador > 3) {
    print("El número de intentos se ha excedido")
    break
  }
  if (contrasena != "rladies_cuernavaca") {
    print("Contraseña incorrecta")
    next
  }
  print("Bienvenid@")
}





############# while función

f_contrasena <- function() {
  contador <- 0
  contrasena <- ""
  while (contrasena != "rladies_cuernavaca") {
    contrasena <- readline("Ingrese la contraseña")
    contador = contador + 1
    if (contador > 3) {
      print("número de intentos excedidos")
      break
    }
    if (contrasena != "rladies_cuernavaca") {
      print("Contraseña incorrecta")
      next
    }
    print("Bienvenid@")
  }
}



############# adivina numero
inicio <- 1 
fin <- 10
secreto <- sample(inicio:fin, 1)
while (TRUE) {
  print("Prueba un número: ")
  n <- scan(n = 1)
  if (n == secreto){
    print("¡ACERTASTE!")
    break
  } else if (n < secreto) {
    print("El numero que R ha pensado es mayor")
  } else {
    print ("El numero que R ha pensado es menor")
  }
}



############# adivina numero y cuenta los intentos
inicio <- 1 
fin <- 10
secreto <- sample(inicio:fin, 1)
contador1 <- 0
while (TRUE) {
  print("Prueba un número: ")
  n <- scan(n = 1)
  contador1 <- contador1 + 1
  if (n == secreto){
    print(paste("¡ACERTASTE! al inetnto", contador1))
    break
  } else if (n < secreto) {
    print("El numero que R ha pensado es mayor")
  } else {
    print ("El numero que R ha pensado es menor")
  }
}




############# while en una función 
adivina_numero <- function(inicio=1, fin=10) {
  secreto <- sample(inicio:fin, 1)
  contador1f <- 0
  while (TRUE) {
    print("Prueba un número: ")
    n <- scan(n = 1)
    contador1f <- contador1f + 1
    if (n == secreto){
      print(paste("¡ACERTASTE! al inetnto", contador1f))
      break
    } else if (n < secreto) {
      print("El numero que R ha pensado es mayor")
    } else {
      print ("El numero que R ha pensado es menor")
    }
  }
}

