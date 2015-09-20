require_relative 'array'
require_relative 'integer'

class Chopper
  
  def initialize
    @numbers_s= {0 =>'cero', 1 =>'uno', 2 =>'dos', 3 =>'tres', 4 =>'cuatro',
                 5 =>'cinco', 6 =>'seis', 7 =>'siete', 8 =>'ocho', 9 =>'nueve', nil => 'vacio'}
    @numbers_s.default= 'demasiado grande'  
  end

  def chop(number, array)
    array.index(number) || -1
  end

  def sum(array)
    suma= array.sum
    if (array.empty? || suma >= 100)
      @numbers_s[suma]
    else
  	  digitos= suma.to_array_i
      digitos.map {|x| @numbers_s[x]}.join(',')
    end
  end
end