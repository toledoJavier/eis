class Memoria
  def initialize
    @contador= 0
  end

  #Aumenta en uno el valor del contador
  def aumentar_uno
    @contador+= 1
  end
  
  #Retorna el valor del contador
  def contador
    @contador
  end
end