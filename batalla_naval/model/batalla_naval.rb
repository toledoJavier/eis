require_relative 'tablero'
require_relative 'barcos'

class BatallaNaval
  attr_accessor :tablero, :barcos

  def initialize
    @tablero= Tablero.new
    @barcos= {"submarino" => Submarino.new, "crucero" => Crucero.new, "destructor" => Destructor.new}
  end
  
  def colocar_barco_en(posicion, tipo_barco, direccion)
    @tablero.colocar_barco_en(posicion, @barcos[tipo_barco], direccion)
  end

  def contenido_de_la_posicion(posicion)
    @tablero.contenido_de_la_posicion posicion
  end
end