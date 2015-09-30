class Jugador
  def initialize
    @eleccion= nil
  end

  def eleccion
    @eleccion
  end
  
  #Guarda como eleccion un objeto Piedra
  def piedra
    @eleccion= Piedra.new
  end
  
  #Guarda como eleccion un objeto Papel
  def papel
    @eleccion= Papel.new
  end
end