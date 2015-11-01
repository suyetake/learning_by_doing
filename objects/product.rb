# Class to take name, price, size
class Product
  attr_reader(:name, :price, :size)
  def initialize(name, price, size)
    @name = name
    @price = price
    @size = size
  end
end
