module TipoJugada
  def gana_a?(tipo_jugada) raise NotImplementedError end
  def sos_tijera?() raise NotImplementedError end
  def sos_piedra?() raise NotImplementedError end
  def sos_papel?() raise NotImplementedError end
  def sos_mono?() raise NotImplementedError end
end

class Piedra 
  include TipoJugada
  
  def gana_a?(otro_tipo) 
  	otro_tipo.sos_tijera? 
  end

  def sos_tijera?() false end
  def sos_piedra?() true end
  def sos_papel?() false end
  def sos_mono?() false end
end

class Papel
  include TipoJugada
  
  def gana_a?(otro_tipo) 
  	otro_tipo.sos_piedra? 
  end
  
  def sos_papel?() true end
  def sos_piedra?() false end
  def sos_mono?() false end
  def sos_tijera?() false end
end

class Tijera
  include TipoJugada
  
  def gana_a?(otro_tipo) 
  	otro_tipo.sos_papel? || otro_tipo.sos_mono?
  end
  
  def sos_tijera?() true end
  def sos_papel?() false end
  def sos_piedra?() false end
  def sos_mono?() false end
end

class Mono
  include TipoJugada
  
  def gana_a?(otro_tipo) 
  	otro_tipo.sos_papel? 
  end

  def sos_mono?() true end
  def sos_tijera?() false end
  def sos_papel?() false end
  def sos_piedra?() false end
end

