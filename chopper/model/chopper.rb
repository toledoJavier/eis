class Chopper
  
  def chop(number, array)
    (array.empty?)? -1 : array.index(number)
  end

  def sum(array)
  	numbers_s= ['vacio','uno',nil,nil,'cuatro',nil,nil,nil,'ocho','nueve']
  	suma= array.reduce :+ 
    if suma.nil?
    	then numbers_s[0]
    else suma.to_s.split(//).map {|x| numbers_s[x.to_i]}.join(',')
    end
  end
end