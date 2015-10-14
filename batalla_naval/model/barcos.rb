class Barco
  attr_accessor :tamanio

  def initialize(tamanio)
    @tamanio= tamanio
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