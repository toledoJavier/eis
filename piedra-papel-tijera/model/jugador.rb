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

  #Guarda como eleccion un objeto Tijera
  def tijera
    @eleccion= Tijera.new
  end

  #Guarda como eleccion un objeto Mono
  def mono
    @eleccion= Mono.new
  end
end