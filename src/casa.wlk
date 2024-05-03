import cosas.* 
import cuentas.*

object casaDePepeYJulian {
	const cosas = []
	var cuenta
	
	method cuentaAUsar(unaCuenta){cuenta = unaCuenta}
	
	method gastar(importe) = cuenta.extraer(importe)
	
	method dineroDisponible() = cuenta.saldo()
	
	method comprar(cosa){
		cosas.add(cosa)
		//self.gastar(cosa.precio())
	}
	
	method cantidadDeCosasCompradas() = cosas.size()
	
	method tieneComida() = cosas.any({c=>c.esComida()})
	
	method vieneDeEquiparse(){
		return cosas.last().esElectrodomestico() or cosas.last().precio()>50000	
	}
	
	method esDerrochona(){
		return cosas.sum({c=>c.precio()}) >= 90000
	}
	
	method compraMasCara() = cosas.max({c=>c.precio()})
	
	method electrodomesticosComprados(){
		const electrodomesticos = #{}
		electrodomesticos.addAll(cosas.filter({c=>c.esElectrodomestico()}))
		return electrodomesticos
	}
	
	method malaEpoca() = cosas.all({c=>c.esComida()})
	
	//method queFaltaComprar(lista) = count.(condicion) lista.filter({c=>!cosas.contains(c)})
	
	method faltaComida(){}
}
