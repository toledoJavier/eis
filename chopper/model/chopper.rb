require_relative 'array'

class Chopper
  
  def initialize
    @numbers_s= ['vacio','uno',nil,nil,'cuatro',nil,nil,nil,'ocho','nueve']
  end

  def chop(number, array)
    (array.empty?)? -1 : array.index(number)
  end

  def sum(array)
  	suma= array.sum
    suma.to_s.split(//).map {|x| @numbers_s[x.to_i]}.join(',')
  end
end