class Array
  #Concatena cada elemento con el elemento del otro array que esta en la misma posicion y lo retorna en un array.
  #precond: Ambos array deben tener elementos que se combinen con +
  #Ejemplo: ["A", "A"].concat_position ["1", "2"] => ["A1", "A2"]
  def concat_position(other_array)
   map.with_index { |e,i| e + other_array[i] }
  end
end