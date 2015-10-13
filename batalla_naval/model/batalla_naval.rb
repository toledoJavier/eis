require_relative 'tablero'
require_relative 'barcos'

class BatallaNaval
  attr_accessor :tablero, :barcos

  def initialize
    @tablero= Tablero.new
    @barcos= {"submarino" => Submarino.new}
  end
  
  def colocar_barco_en(posicion, tipo_barco, direccion)
  	puts @barcos[tipo_barco]
    @tablero.colocar_barco_en(posicion, @barcos[tipo_barco], direccion)
  end
end