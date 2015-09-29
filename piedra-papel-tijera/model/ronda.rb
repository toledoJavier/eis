class Ronda
  def initialize(jugador, otro_jugador)
    @jugador_uno= jugador
    @jugador_dos= otro_jugador
    @resultados= {true => @jugador_uno, false =>@jugador_dos}
  end

  def ganador?
    if hay_empate?
       [@jugador_uno, @jugador_dos]
    else
      @resultados[@jugador_uno.gana?(@jugador_dos)]
    end
  end

  def hay_empate?
    !@jugador_uno.gana?(@jugador_dos) && !@jugador_dos.gana?(@jugador_uno)
  end
end