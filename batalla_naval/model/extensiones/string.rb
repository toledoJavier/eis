class String
  #Retorna un array que contiene el string n veces.
  #Ejemplo: "A".repeat_in_array 3 => ["A", "A", "A"]
  def repeat_in_array(n)
    res= []
    n.times { res << self}
    res
  end
  
  #Retorna un array que contien self y los siguentes n.
  #Ejemplo: "A".to_array_with_next 3 => ["A", "B", "C"]
  def to_array_with_next(n)
  	res= [self]
  	(n - 1).times { |i| res << res[i].next }
    res
  end
end