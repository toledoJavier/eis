module TipoJugada
  def gana_a?(tipo_jugada) raise NotImplementedError end
  def sos_tijera?() raise NotImplementedError end
  def sos_piedra?() raise NotImplementedError end
end

class Piedra 
  include TipoJugada
  def gana_a?(otro_tipo) 
  	otro_tipo.sos_tijera? 
  end

  def sos_tijera?() false end
  def sos_piedra?() true end
end

class Papel
end

class Mono
end

class Tijera
end