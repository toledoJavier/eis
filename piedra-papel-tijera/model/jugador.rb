class Jugador
  def initialize
    @eleccion= nil
  end

  def eleccion
    @eleccion
  end

  def piedra
    @eleccion= Piedra.new
  end
end