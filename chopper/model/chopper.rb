require_relative 'array'
require_relative 'integer'

class Chopper
  
  def initialize
    @numbers_s= ['cero','uno','dos','tres','cuatro','cinco','seis','siete','ocho','nueve']
  end

  def chop(number, array)
    (array.empty?)? -1 : array.index(number)
  end

  def sum(array)
    if array.empty? then return 'vacio' end
  	digitos= array.sum.to_array_i
  	(digitos.length == 3)? 'demasiado grande' :
      digitos.map {|x| @numbers_s[x]}.join(',')
  end
end