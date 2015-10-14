require_relative '../model/agua'
require_relative '../model/excepciones'
require_relative 'extensiones/array'
require_relative 'extensiones/string'

class Tablero
  def initialize
    @posiciones= Hash.new
    @posiciones.default= Agua.new
  end
  
  #Retorna el contenido del tablero en la posicion dad.
  def contenido_de_la_posicion(posicion)
    @posiciones[posicion]
  end
  
  #Coloca un barco en las posicion y direccion dada, en caso de que alguna posicion este ocupada lanza una excepcion.
  def colocar_barco_en(posicion, tipo_barco, direccion)
  	posiciones_a_ocupar= calcular_posiciones(posicion, tipo_barco.tamanio, direccion)
    if posiciones_libres? posiciones_a_ocupar
      posiciones_a_ocupar.map {|p| @posiciones[p]= tipo_barco}
    else
      raise PosicionOcupadaException.new
    end
  end

  private
  #Dado un array de posiciones retorna true si todas las posiciones estan libres.
  def posiciones_libres?(consulta_posiciones)
    consulta_posiciones.all? {|p| posicion_libre? p}
  end
  
  #Dada una posicion retorna true si la posicion no esta ocupada por un barco.
  def posicion_libre?(posicion)
    ! @posiciones.has_key? posicion
  end
  
  #Retorna las posiciones en un array en la direccion dada de acuerdo a la posicion inicial y el tamanio del barco
  #si la direccion dada es "horizontal" usa el metodo horizontal si es "vertical" el metodo vertical.
  def calcular_posiciones(posicion_inicial, tamanio_barco, direccion)
    send(direccion.to_sym, posicion_inicial, tamanio_barco)
  end
  
  #Calcula y retorna en un array las posiciones siguentes horizontalmente de acuerdo a la posicion inicial
  #y al tamanio del barco.
  def horizontal(posicion_inicial, tamanio_barco)
    filas= posicion_inicial[0].repeat_in_array tamanio_barco
  	columnas= posicion_inicial[1..-1].to_array_with_next tamanio_barco
    filas.concat_position columnas
  end
  
  #Calcula y retorna en un array las posiciones siguentes verticalmente  de acuerdo a la posicion inicial
  #y al tamanio del barco.
  def vertical(posicion_inicial, tamanio_barco)
    filas= posicion_inicial[0].to_array_with_next tamanio_barco
    columnas= posicion_inicial[1..-1].repeat_in_array tamanio_barco
    filas.concat_position columnas
  end
end