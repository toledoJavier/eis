class Partida
  def initialize(jugador, otro_jugador)
    @jugador_uno= jugador
    @jugador_dos= otro_jugador
    @rondas= []
  end
  
  #Agrega una ronda a la partida.
  def agregar_ronda(ronda)
    @rondas.push ronda
  end
  
  #Retorna el jugador que gano mas rondas, en caso de empate devuelve ambos
  #jugadores en un array.
  def ganador?
    resultados= @rondas.map {|r| r.ganador?()}
    ganador_cant = resultados.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
    if hay_empate? resultados, ganador_cant
    	[@jugador_uno, @jugador_dos]
    else
    	definir_ganador(resultados, ganador_cant)
    end
  end
  
  #Recibe un array con cada resultado de cada ronda, un hash con
  #ganador=>cantidad de veces que gano y retorna true si hay empate
  def hay_empate?(resultados, ganador_cant)
    resultados.all? {|x| ganador_cant[x] == 1} || resultados.all? {|x| x.kind_of?(Array)}
  end
  
  #Recibe un array con cada resultado de cada ronda, un hash con
  #ganador=>cantidad de veces que gano y el que ganador.
  #precondicion: antes usar el metodo hay_empate?
  def definir_ganador(resultados, ganador_cant)
  	posible_ganador= resultados.max_by { |v| ganador_cant[v] }
    if posible_ganador.kind_of? Array
      resultados.min_by { |v| ganador_cant[v] }
    else
      posible_ganador
    end
  end
end