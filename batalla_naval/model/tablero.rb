require_relative '../model/agua'

class Tablero
  def initialize
    @posiciones= Hash.new
    @posiciones.default= Agua.new
  end

  def contenido_de_la_posicion(posicion)
    @posiciones[posicion]
  end

  def colocar_barco_en(posicion, tipo_barco, direccion)
    if ! @posiciones.has_key? posicion
    	@posiciones[posicion]= tipo_barco
    end
  end
end