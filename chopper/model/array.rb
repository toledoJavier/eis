class Array
  def sum
    (empty?)? 0 : (reduce :+)
  end
end