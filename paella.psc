Proceso paella
	
	Definir persona Como Entero
	Definir arroz, marisco Como Real
	Definir cantarroz, cantmarisco Como Real
	Definir costarroz, costmarisco, total Como Real
	
	arroz <- 3500
	marisco <- 35000
	
	Escribir "Ingrese la cantidad de comensales:"
	Leer persona
	
	cantmarisco <- 0.0625 * persona
	cantarroz <- 0.125 * persona
	
	costarroz <- cantarroz * arroz
	costmarisco <- cantmarisco * marisco
	
	total <- costmarisco + costarroz
	
	Escribir "Cantidad de arroz necesaria: ", cantarroz, " kg"
	Escribir "Cantidad de mariscos necesaria: ", cantmarisco, " kg"
	Escribir "Costo del arroz: $", costarroz
	Escribir "Costo de los mariscos: $", costmarisco
	Escribir "Costo total de la paella: $", total
	
FinProceso