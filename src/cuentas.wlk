object cuentaCorriente{
	var saldo
	
	method depositar(importe){saldo = saldo + importe}
	
	method extraer(importe){saldo = 0.max(saldo-importe)}
	
	method saldo() = saldo
}

object cuentaGastos{
	var saldo
	
	method depositar(importe){
		saldo = 0.max(saldo+importe-200)
	}
	
	method extraer(importe){
		saldo = saldo- if(importe<=10000) importe+200 else importe+importe*0.02
	}
	
	method saldo() = saldo
}

object cuentaCombinada{
	var cuentaPrimaria
	var cuentaSecundaria
	
	method cuentaPrimaria(cuenta){cuentaPrimaria=cuenta}
	method cuentaSecundaria(cuenta){cuentaSecundaria=cuenta}
	
	method depositar(importe){cuentaPrimaria.depositar(importe)}
	
	method extraer(importe){
		if(importe<cuentaPrimaria.saldo()) cuentaPrimaria.extraer(importe) else cuentaSecundaria.extraer(importe)  
	}
	
	method saldo() = cuentaPrimaria.saldo() + cuentaSecundaria.saldo() 
}