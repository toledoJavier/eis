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
    resultados.max_by { |v| ganador_cant[v] }
  end
end