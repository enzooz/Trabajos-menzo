//Debe mostrar el dinero total acumulado, la venta mas grande y el nombre + monto de ese producto
//Contar cuantas ventas >30000 y promedio entre todas las ventas
//Dia con mas recaudacion. numero de dia y total recaudado
//Menu repetitivo
//Silvestri enzo
Proceso controlVentas
	Definir opcion,dia,dias,ventas,i,cantidad como entero;										
	Definir producto, productoMayor como caracter;
	definir precio,subtotal,totalVenta,totalRecaudado,mayorVenta,promedio,recaudacionDia,mayorRecaudacionDia como real;
	definir contVentas,ventasAltas,diaMayor,datosCargados como entero;

	dia<-0;dias<-0;ventas<-0;i<-0;cantidad<-0;precio<-0;subtotal<-0;totalventa<-0;totalRecaudado<-0;mayorVenta<-0;promedio<-0;recaudacionDia<-0;mayorRecaudacionDia<-0;contVentas<-0;ventasAltas<-0;diaMayor<-0;datosCargados<-0;
	Repetir
		Escribir "=== SISTEMA DE VENTAS ===";
		Escribir "Si su compra supera los $50000, se le aplicará un descuento del 10%. Si es inferior a 5000, se le aplicara un recargo del 5%.";
		Escribir "Ingrese su opcion";
		Escribir "1. Registrar ventas";
		Escribir "2. Ver estadísticas";
		Escribir "3. Salir";
		leer opcion;
		Segun opcion hacer
			1:
				Repetir
					Escribir "Ingrese la cantidad de dias 1 a 30";		
					leer dias;
				Hasta Que dias >=1 y dias<=30															//Verifica que los dias sea entre 1 y 30
				para dia<- 1 hasta dias Hacer
					Escribir "Dia:",dias;
					repetir
						Escribir "Ingrese cantidad de ventas en el día;";
						leer ventas;
					Hasta que ventas>=1 y ventas <=30
					recaudacionDia <- 0;
					para i <- 1 Hasta ventas Hacer
						Repetir
							escribir "Ingrese el nombre del producto:";
							Leer producto;
						Hasta Que producto <> ""
						Repetir
							escribir "Ingrese el precio del producto:";
							Leer precio;
						Hasta Que precio > 0
						Repetir
							escribir "Ingrese la cantidad vendida:";
							Leer cantidad;
						Hasta Que cantidad > 0
						subtotal <-precio * cantidad;
						si subtotal>50000 Entonces														//Aplica descuento si es necesario
							totalventa <- subtotal - (subtotal*0.10);
						sino si subtotal < 5000 Entonces
								totalventa <-subtotal + (subtotal * 0.05);								//Aplica recargo si es necesario
							SiNo
							totalventa<-subtotal;	
							finsi
						FinSi
						Escribir "Total venta: $",totalventa;
						totalRecaudado <- totalRecaudado + totalventa;
						recaudacionDia <- recaudacionDia + totalventa;
						contVentas <- contVentas +1;
						si totalventa > mayorVenta Entonces											//Compara las ventas, si es mayor la registra en mayorVenta
							mayorVenta<- totalventa;
							productoMayor <- producto;
						FinSi
						si totalventa >30000 Entonces													//Contador de ventas mayores a 30000
							ventasAltas <- ventasAltas + 1;
						FinSi
					FinPara
					si recaudacionDia > mayorRecaudacionDia Entonces									//Compara que dia se recaudo mas
						mayorRecaudacionDia <-recaudacionDia;
						diaMayor<-dia;
					FinSi
				FinPara
				datosCargados <- 1;																		//Verifica que exista algun dato cargado previamente por el usuario
			2:
				si datosCargados = 1 Entonces
					promedio <- totalRecaudado / contVentas;
					Escribir "==ESTADISTICAS === ";
					Escribir "Total recaudado: $",totalRecaudado;
					Escribir "La venta mas grande ha sido:";
					Escribir "Producto:", productoMayor;
					Escribir "Monto: $", mayorVenta;
					Escribir "Ventas mayores a $30.000: ",ventasAltas;
					Escribir "Promedio de ventas: $",promedio;
					Escribir "Dia de mayor recaudación: ",diaMayor;
					Escribir "Total recaudado ese día: ",mayorRecaudacionDia;
				SiNo
					Escribir "Debe cargar ventas primero.";
				FinSi
			3:
				Escribir "Gracias por utilizar el sistema.";
			De Otro Modo:
				Escribir "Ingrese una opcion valida";
		FinSegun
	Hasta Que opcion=3
FinProceso