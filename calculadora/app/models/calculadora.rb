class Calculadora
  attr_accessor :memoria

  def initialize
    @memoria= Memoria.new
  end
  
  #Suma los dos operando y lo retorna, tambien le dice a memoria que aumente_uno(ver Memoria)
  def sumar(operando, otro_operando)
  	@memoria.aumentar_uno
    operando + otro_operando
  end

  #Resta los dos operando y lo retorna, tambien le dice a memoria que aumente_uno(ver Memoria)
  def restar(operando, otro_operando)
  	@memoria.aumentar_uno
    operando - otro_operando
  end

  #Calcula el promedio los dos operando y lo retorna, tambien le dice a memoria que aumente_uno(ver Memoria)
  def promedio(operando, otro_operando)
  	@memoria.aumentar_uno
  	(operando + otro_operando) / 2
  end

  #Utiliza a Memoria para obtener el valor de contador
  #ver meotodo contador en Memoria
  def cantidad_de_operaciones
    @memoria.contador
  end

  #Le indica a memoria que se reinicie
  #ver metodo reiniciar de Memoria
  def resetear_memoria
    @memoria.reiniciar
  end
end