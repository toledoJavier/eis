class Array
  #Retorna la suma de los enteros que contiene el array.
  #precondicion: El array solo debe contener numeros.
  def sum
    reduce :+
  end
end