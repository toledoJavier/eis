require_relative '../model/agua'
require_relative '../model/excepciones'

class Tablero
  def initialize
    @posiciones= Hash.new
    @posiciones.default= Agua.new
  end

  def contenido_de_la_posicion(posicion)
    @posiciones[posicion]
  end

  def colocar_barco_en(posicion, tipo_barco, direccion)
  	posiciones_a_ocupar= calcular_posiciones(posicion, tipo_barco.tamanio, direccion)
    if posiciones_libres? posiciones_a_ocupar
      posiciones_a_ocupar.map {|p| @posiciones[p]= tipo_barco}
    else
      raise PosicionOcupadaException.new
    end
  end

  private
  def posiciones_libres?(consulta_posiciones)
    consulta_posiciones.all? {|p| posicion_libre? p}
  end
  
  def posicion_libre?(posicion)
    ! @posiciones.has_key? posicion
  end

  def calcular_posiciones(posicion_inicial, tamanio_barco, direccion)
    if direccion == "horizontal"
      filas= []
      tamanio_barco.times { filas << posicion_inicial[0]}
  	  columnas= [posicion_inicial[1..-1]]
      (tamanio_barco - 1).times { |i| columnas << columnas[i].next }
      filas.map.with_index { |e,i| e + columnas[i] }
    else
      filas= [posicion_inicial[0]]
      (tamanio_barco - 1).times { |i| filas << filas[i].next }
      columnas= []
      tamanio_barco.times { columnas << posicion_inicial[1..-1]}
      filas.map.with_index { |e,i| e + columnas[i] }
  end
  end
end