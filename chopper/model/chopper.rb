require_relative 'array'
require_relative 'integer'

class Chopper
  
  def initialize
    @numbers_s= ['vacio','uno',nil,nil,'cuatro',nil,nil,nil,'ocho','nueve']
  end

  def chop(number, array)
    (array.empty?)? -1 : array.index(number)
  end

  def sum(array)
  	digitos= array.sum.to_array_i
  	(digitos.length == 3)? 'demasiado grande' :
      digitos.map {|x| @numbers_s[x]}.join(',')
  end
end