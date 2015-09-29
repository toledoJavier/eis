class Ronda
  def initialize(jugador, otro_jugador)
    @jugador_uno= jugador
    @jugador_dos= otro_jugador
    @resultados= {true => @jugador_uno, false =>@jugador_dos, nil =>[@jugador_uno, @jugador_dos]}
  end

  def ganador?
    if ( ! @jugador_uno.gana?(@jugador_dos) && !@jugador_dos.gana?(@jugador_uno))
      @resultados[nil]
    else
      @resultados[@jugador_uno.gana?(@jugador_dos)]
    end
  end
end