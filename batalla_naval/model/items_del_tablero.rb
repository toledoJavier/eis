class ItemDelTablero
  def recibir_disparo() raise NotImplementedError end
end

class Agua < ItemDelTablero
  def recibir_disparo
    "Agua"
  end
end

class Barco < ItemDelTablero
  attr_accessor :tamanio, :disparos_recibidos

  def initialize(tamanio)
    @tamanio= tamanio
    @disparos_recibidos= 0
  end

  def recibir_disparo
    @disparos_recibidos+= 1
    "Barco Averiado"
  end

end

class Submarino < Barco
  def initialize
    super 1
  end
end

class Crucero < Barco
  def initialize
    super 2
  end
end

class Destructor < Barco
  def initialize
    super 3
  end
end