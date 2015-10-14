require_relative 'tablero'
require_relative 'barcos'

class BatallaNaval
  attr_accessor :tablero, :barcos

  def initialize
    @tablero= Tablero.new
    @barcos= {"submarino" => Submarino.new, "crucero" => Crucero.new, "destructor" => Destructor.new}
  end
  
  #Coloca un barco en el tablero en la posicion dada.
  #ver colocar_barco_en de la clase Tablero.
  def colocar_barco_en(posicion, tipo_barco, direccion)
    @tablero.colocar_barco_en(posicion, @barcos[tipo_barco], direccion)
  end
  
  #Retorna el contenido del tablero en la posicion dada.
  #ver contenido_de_la_posicion de la clase Tablero.
  def contenido_de_la_posicion(posicion)
    @tablero.contenido_de_la_posicion posicion
  end
  
  #Retorna el resultado de haber disparado a la posicion dada del tablero.
  #ver disparar_en de la clase Tablero
  def disparar_en(posicion)
    @tablero.disparar_en posicion
  end
end