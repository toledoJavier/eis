class Chopper
  
  def chop(number, array)
    (array.empty?)? -1 : array.index(number)
  end

  def sum(array)
    if array.empty?
    	then 'vacio'
    else 'uno'
    end
  end
end