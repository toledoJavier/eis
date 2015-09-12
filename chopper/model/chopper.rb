class Chopper
  def chop(number, array)
    (array.empty?)? -1 : array.index(number)
  end
end