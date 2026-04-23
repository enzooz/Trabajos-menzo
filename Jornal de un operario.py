# Se necesita un programa para el area de recursos humanos de una empresa que permita informar el jornal de un determinado operario. Se debera cargar por teclado
# el codigo de turno que el operario trabajo ese dia 1 diurno 2 nocturno y la cantidad de horas trabajadas. 
# La politica de trabajo en la empresa es que los operarios de la misma pueden trabajar en el turno diurno y nocturno. Si un operario trabaja en el turno 
# nocturno el pago es de 40600 la hs y si lo hacen en el turno diurno cobra 35500 la hs


PAGO_DIURNO = 35500
PAGO_NOCTURNO = 40600
acumulador = 1
pagototal = 0
pago = 0

while acumulador==1:
    cantidad_dias = int(input("Ingrese la cantidad de dias que ha trabajado\n"))                    #Dias
    turno = int(input("Ingrese que turno ha hecho. 1. Diurna. 2. Nocturna\n"))                      #Turno
    if(turno==1):
        hora = float(input("Ingrese las horas que trabajo en el dia.\n"))                           #Horas1
        pago = (hora*PAGO_DIURNO)*cantidad_dias
        pagototal=pagototal+pago          
    elif(turno==2):
        hora = float(input("Ingrese las horas que trabajo en la noche.\n"))                         #Horas2
        pago = (hora*PAGO_NOCTURNO)*cantidad_dias
        pagototal=pagototal+pago          
    else:
        print("Por favor ingrese una opcion válida.\n")
    acumulador = int(input("¿Desea realizar otra operacion? 1. Sí. 2. No: "))

print("Usted recibirá: $",pagototal)                                                            
print("Gracias por usar nuestro programa. Tenga un buen dia\n.")