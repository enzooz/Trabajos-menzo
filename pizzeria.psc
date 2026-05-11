Proceso Pizzeria
	
	Definir opcion,cantPizzas,i,buscar,pos Como Entero
	Definir nombreBuscar Como Caracter
	Definir nuevoPrecio,total Como Real
	Definir seguir Como Caracter
	
	Dimension nombres[20]
	Dimension descripciones[20]
	Dimension precios[20]
	
	Dimension pedidoPizza[50]
	Dimension pedidoCantidad[50]
	
	Definir nombres Como Caracter
	Definir descripciones Como Caracter
	Definir precios Como Real
	
	Definir pedidoPizza Como Entero
	Definir pedidoCantidad Como Entero
	
	Definir cantPedidos Como Entero
	
	//Pizzas iniciales
	cantPizzas <- 3
	
	nombres[1] <- "Muzzarella"
	descripciones[1] <- "Queso y salsa"
	precios[1] <- 5000
	
	nombres[2] <- "Napolitana"
	descripciones[2] <- "Tomate y ajo"
	precios[2] <- 6500
	
	nombres[3] <- "Calabresa"
	descripciones[3] <- "Longaniza y queso"
	precios[3] <- 7000
	
	cantPedidos <- 0
	
	Repetir
		
		Escribir "===== PIZZERIA ====="
		Escribir "1. Ver menu"
		Escribir "2. Agregar pizza"
		Escribir "3. Modificar precio"
		Escribir "4. Realizar pedido"
		Escribir "5. Mostrar resumen"
		Escribir "6. Salir"
		Leer opcion
		
		Segun opcion Hacer
			
			1:
				Escribir "===== MENU ====="
				
				Para i <- 1 Hasta cantPizzas Hacer
					Escribir i,". ",nombres[i]
					Escribir "Descripcion: ",descripciones[i]
					Escribir "Precio: $",precios[i]
					Escribir "----------------------"
				FinPara
				
				
			2:
				Si cantPizzas < 20 Entonces
					
					cantPizzas <- cantPizzas + 1
					
					Escribir "Ingrese nombre:"
					Leer nombres[cantPizzas]
					
					Escribir "Ingrese descripcion:"
					Leer descripciones[cantPizzas]
					
					Escribir "Ingrese precio:"
					Leer precios[cantPizzas]
					
					Escribir "Pizza agregada correctamente."
					
				SiNo
					Escribir "No hay espacio para mas pizzas."
				FinSi
				
				
			3:
				pos <- 0
				
				Escribir "Ingrese nombre de la pizza:"
				Leer nombreBuscar
				
				Para i <- 1 Hasta cantPizzas Hacer
					
					Si nombres[i] = nombreBuscar Entonces
						pos <- i
					FinSi
					
				FinPara
				
				Si pos <> 0 Entonces
					
					Escribir "Precio actual: $",precios[pos]
					Escribir "Ingrese nuevo precio:"
					Leer nuevoPrecio
					
					precios[pos] <- nuevoPrecio
					
					Escribir "Precio actualizado."
					
				SiNo
					Escribir "Pizza no encontrada."
				FinSi
				
				
			4:
				Repetir
					
					Escribir "===== MENU ====="
					
					Para i <- 1 Hasta cantPizzas Hacer
						Escribir i,". ",nombres[i]," - $",precios[i]
					FinPara
					
					Escribir "Seleccione numero de pizza:"
					Leer buscar
					
					Si buscar >= 1 Y buscar <= cantPizzas Entonces
						
						cantPedidos <- cantPedidos + 1
						
						pedidoPizza[cantPedidos] <- buscar
						
						Escribir "Ingrese cantidad:"
						Leer pedidoCantidad[cantPedidos]
						
						Escribir "Agregado al pedido."
						
					SiNo
						Escribir "Pizza invalida."
					FinSi
					
					Escribir "Desea seguir agregando? (S/N)"
					Leer seguir
					
				Hasta Que seguir = "N" O seguir = "n"
				
				
			5:
				total <- 0
				
				Escribir "===== RESUMEN ====="
				
				Para i <- 1 Hasta cantPedidos Hacer
					
					Escribir nombres[pedidoPizza[i]]
					Escribir "Cantidad: ",pedidoCantidad[i]
					Escribir "Subtotal: $",pedidoCantidad[i] * precios[pedidoPizza[i]]
					Escribir "-------------------"
					
					total <- total + (pedidoCantidad[i] * precios[pedidoPizza[i]])
					
				FinPara
				
				Escribir "TOTAL A PAGAR: $",total
				
				
			6:
				Escribir "Gracias por usar el sistema."
				
				
			De Otro Modo:
				Escribir "Opcion invalida."
				
		FinSegun
		
	Hasta Que opcion = 6
	
FinProceso