class ItemDelTablero
  def recibir_disparo() raise NotImplementedError end
end

class Agua < ItemDelTablero
  #Retorna un string Agua.
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
  
  #Suma 1 a los disparos recibidos y retorna un string indicando si esta averiado o hundido.
  def recibir_disparo
    @disparos_recibidos+= 1
    if barco_hundido?
      "Barco Hundido"
    else
      "Barco Averiado"
    end
  end
  
  #Retorna true si el barco esta hundido.
  def barco_hundido?
    @tamanio == @disparos_recibidos
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