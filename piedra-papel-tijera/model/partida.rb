class Partida
  def initialize(jugador, otro_jugador)
    @jugador_uno= jugador
    @jugador_dos= otro_jugador
    @rondas= []
  end

  def agregar_ronda(ronda)
    @rondas.push ronda
  end

  def ganador?
    resultados= @rondas.map {|r| r.ganador?()}
    ganador_cant = resultados.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
    posible_ganador= resultados.max_by { |v| ganador_cant[v] }
    if ganador_cant.all? {|x| ganador_cant[x] == 1} || resultados.all? {|x| x.kind_of?(Array)}
    	[@jugador_uno, @jugador_dos]
      elsif posible_ganador.kind_of? Array
    	resultados.min_by { |v| ganador_cant[v] }
      else
      	  posible_ganador
    end
  end
end