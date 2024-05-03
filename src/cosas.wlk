object heladera {
	method precio() = 200000 
	method esComida() = false 
	method esElectrodomestico() = true 	
}

object cama {
	method precio() = 80000 
	method esComida() = false 
	method esElectrodomestico() = false 	
}

object tiraDeAsado {
	method precio() = 3500 
	method esComida() = true 
	method esElectrodomestico() = false 
}

object paqueteDeFideos {
	method precio() = 500 
	method esComida() = true 
	method esElectrodomestico() = false 	
}

object plancha {
	method precio() = 12000 
	method esComida() = false 
	method esElectrodomestico() = true 	
}

object milanesas{
	method precio() = 2600 
	method esComida() = true 
	method esElectrodomestico() = false 	
}

object botellaSalsaDeTomate{
	method precio() = 900 
	method esComida() = true 
	method esElectrodomestico() = false
}

object microondas{
	method precio() = 42000 
	method esComida() = false 
	method esElectrodomestico() = true
}

object cebollas{
	method precio() = 250 
	method esComida() = true 
	method esElectrodomestico() = false
}

object computadora{
	method precio() = 500 * dolar.precioVenta()
	method esComida() = false 
	method esElectrodomestico() = true
}

object dolar{
	method precioVenta() = 1100
}

object packComida{
	var plato
	var aderezo
	
	method plato(alimento){ plato = alimento}
	method aderezo(unAderezo){aderezo = unAderezo}
	method precio() = plato.precio() + aderezo.precio() 
	method esComida() = true 
	method esElectrodomestico() = false
}