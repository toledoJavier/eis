class Partida
  def initialize(jugador, otro_jugador)
    @jugador_uno= jugador
    @jugador_dos= otro_jugador
    @resultados_rondas= []
  end
  
  #Agrega una ronda a la partida.
  def guardar_resultado_ronda(res_ronda)
    @resultados_rondas.push res_ronda
  end
  
  #Retorna el jugador que gano mas rondas, en caso de empate devuelve ambos
  #jugadores en un array.
  #precondicion: almenos una ronda agregada previamente.
  def ganador?
    ganador_cant = @resultados_rondas.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
    if hay_empate? ganador_cant
    	[@jugador_uno, @jugador_dos]
    else
    	definir_ganador ganador_cant
    end
  end
  
  #Recibe un array con cada resultado de cada ronda, un hash con
  #ganador=>cantidad de veces que gano y retorna true si hay empate.
  def hay_empate?(ganador_cant)
    @resultados_rondas.all? {|x| ganador_cant[x] == 1} || @resultados_rondas.all? {|x| x.kind_of?(Array)}
  end
  
  #Recibe un array con cada resultado de cada ronda, un hash con
  #ganador=>cantidad de veces que gano y el que ganador.
  #precondicion: antes usar el metodo hay_empate?
  def definir_ganador(ganador_cant)
  	posible_ganador= @resultados_rondas.max_by { |v| ganador_cant[v] }
    if posible_ganador.kind_of? Array
      @resultados_rondas.min_by { |v| ganador_cant[v] }
    else
      posible_ganador
    end
  end
end