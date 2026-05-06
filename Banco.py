#Debe hacer una aplicacion de un banco el cual debe tener un menu que permita:
#Ver el saldo disponible, depositar, extraer y salir del menu (Cerrar el programa)
#IDEAS: usuario?
user = "Menzo"
cont = "67"
saldo = 0
opcion = 0
print("Bienvenido al Banco GPT")
for i in range(3):
    print(f"Este es su {i+1} intento.")
    userbien = input("Por favor, ingrese su usuario:")
    contbien = input("Por favor, ingrese su contraseña:")
    if user ==userbien and cont==contbien:
        print("Ha iniciado sesion exitosamente")
        break
    else:
        print("Datos incorrectos")
else:
    print("Demasiados intentos. Programa cerrado")
    exit()
while opcion!=4:
    print("--- MENU ---")
    print("1. Ver Saldo")
    print("2. Depositar")
    print("3. Extraer")
    print("4. Salir")
    opcion = int(input("Seleccione su opcion: "))
    match opcion:
        case 1:
            print("Saldo disponible: $",saldo)
        case 2:
            deposito=int(input("Ingrese el monto a depositar:"))
            saldo=saldo+deposito
            print("Su nuevo saldo es:$",saldo)
        case 3:
                print("Monto disponible:",saldo)
                extraccion=int(input("Ingrese el monto a extraer:"))
                if (extraccion>saldo):
                        print("No posee ese saldo.")
                else:
                        saldo=saldo-extraccion
                        print("Ha retirado: $",extraccion)
                        print("Saldo restante: $",saldo)
        case 4:
            quit()
        case _:
            print("Ingrese una opcion válida.")
print("Se cerrará el programa")