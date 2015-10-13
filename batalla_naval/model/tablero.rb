class Tablero
  def initialize
    @posiciones= Hash.new
    @posiciones.default= Agua.new
  end

  def contenido_de_la_posicion(posicion)
    @posiciones[posicion]
  end
end