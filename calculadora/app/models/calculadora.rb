class Calculadora
  attr_accessor :memoria

  def initialize
    @memoria= Memoria.new
  end

  def sumar(operando, otro_operando)
  	memoria.aumentar_uno
    operando + otro_operando
  end

  def restar(operando, otro_operando)
  	memoria.aumentar_uno
    operando - otro_operando
  end

  def promedio(operando, otro_operando)
  	memoria.aumentar_uno
  	(operando + otro_operando) / 2
  end

  def cantidad_de_operaciones
    @memoria.contador
  end
end