Algoritmo HeapSort
	Definir arreglo, n, i Como Entero
	
	Escribir "Ingrese la cantidad de elementos a ordenar: "
	Leer n
	
	Dimension arreglo(n)
	
	// Leer los elementos del arreglo
	Para i <- 1 Hasta n Hacer
		Escribir "Ingrese el elemento ", i, ": "
		Leer arreglo(i)
	FinPara
	
	// Construir el montículo
	ConstructorMontículo(arreglo, n)
	
	// Ordenar el arreglo
	Para i <- n Hasta 2 Con Paso -1 Hacer
		Intercambiar(arreglo, 1, i)
		AjustarMontículo(arreglo, 1, i - 1)
	FinPara
	
	// Mostrar el arreglo ordenado
	Escribir "Arreglo ordenado: "
	Para i <- 1 Hasta n Hacer
		Escribir arreglo(i), " "
	FinPara
FinAlgoritmo

Funcion ConstructorMontículo(arreglo, n)
	Definir i Como Entero
	
	Para i <- n DIV 2 Hasta 1 Con Paso -1 Hacer
		AjustarMontículo(arreglo, i, n)
	FinPara
FinFuncion

Funcion AjustarMontículo(arreglo, i, n)
	Definir izq, der, mayor, temp Como Entero
	
	izq <- 2 * i
	der <- 2 * i + 1
	
	Si izq <= n Y arreglo(izq) > arreglo(i) Entonces
		mayor <- izq
	Sino
		mayor <- i
	FinSi
	
	Si der <= n Y arreglo(der) > arreglo(mayor) Entonces
		mayor <- der
	FinSi
	
	Si mayor <> i Entonces
		Intercambiar(arreglo, i, mayor)
		AjustarMontículo(arreglo, mayor, n)
	FinSi
FinFuncion

Funcion Intercambiar(arreglo, i, j)
	Definir temp Como Entero
	
	temp <- arreglo(i)
	arreglo(i) <- arreglo(j)
	arreglo(j) <- temp
FinFuncion