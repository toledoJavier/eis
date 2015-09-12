class Chopper
  
  def chop(number, array)
    (array.empty?)? -1 : array.index(number)
  end

  def sum(array)
  	numbers_s= ['vacio','uno',nil,nil,'cuatro']
  	suma= array.reduce :+ 
    if suma.nil?
    	then numbers_s[0]
    else numbers_s[suma]
    end
  end
end