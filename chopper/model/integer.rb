class Integer
  #Retorna un array que contiene los digitos del entero. 12 -> [1,2]
  def to_array_i
    to_s.split(//).map {|x| x.to_i}
  end
end