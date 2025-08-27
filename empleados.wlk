//Escribir aqui los objetos

object gimenez{
    var fondoSueldo = 300000
    method pagarSueldo(empleado){
        empleado.cobrarSueldo()
        fondoSueldo = fondoSueldo - empleado.cuantoCobra()
    }
    method  fondosDisponibles(){
        return fondoSueldo
    }
}

object galvan{
    var sueldo = 15000
    var cobrado = 0
    var deuda = 0
    method cobrarSueldo(){
        cobrado += sueldo
    }
    method definirSueldo(numero){
        sueldo = numero
    }
    method cuantoCobra(){
        return sueldo
    }
    method totalCobrado(){
        return cobrado
    }
    method gastar(numero){
        cobrado = cobrado - numero
        if (cobrado < 0){
            deuda = deuda + (-1 * cobrado)
            cobrado = 0
        }
    }
}

object baigorria{
    const precioEmpanada = 15
    var empanadasVendidas = 0
    var sueldo = precioEmpanada * empanadasVendidas
    var cobrado = 0
    method cobrarSueldo(){
        cobrado += sueldo
    }
    method vender(numero){
        empanadasVendidas += numero
        sueldo = precioEmpanada * empanadasVendidas
    }
    method ventasHastaAhora(){
        return empanadasVendidas
    }
    method cuantoCobra(){
        return sueldo
    }
    method totalCobrado(){
        return cobrado
    }
}
