##Escriba un bucle for que itere sobre los n�meros del 1 al 7 e imprima el cubo de cada n�mero usando print ().
sec <- 1:7
for(l in sec){
  print(paste("cubo de",l,l^3))
}
#Escriba un bucle for que itere sobre los nombres de columna del conjunto de datos de iris . Utilice las siguientes funciones print (), paste().
head(iris)
iris <- iris
n <- ncol(iris)
for(i in n) {
  print(colnames(iris))
}
#Escriba un ciclo while que imprima n�meros normales aleatorios est�ndar (use rnorm ()) pero se detiene (breaks) si obtiene un n�mero mayor que 1.
while (TRUE) {
  n <- rnorm(1)
  print(n)
  if(n > 1){
    break()
  }
}


#El siguiente uso adapta el bucle del �ltimo ejercicio para que no imprima n�meros negativos.



while (TRUE) {
  n <- rnorm(1)
  if(n > 0){
    print(n)
  }
  if(n>1){
    break()
  }
}


