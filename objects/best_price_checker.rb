# BestPriceChecker class
# Homework 2 in Builtin and Custom Objects slide deck
class BestPriceChecker
  attr_reader :product_name, :price, :quantity

  def product_name
    @product_name
  end

  def initialize(p = "foo", price = 2.00, quantity = 1)
      @product_name = p
  end

  def add_product
    puts "Product has been added"
  end
  def add_price

  end
  def add_quantity

  end
  def add_brand

  end

  # discover ppq (price per quantity) and store value
  def calc_price_per_quantity

  end

  # compare ppq stored for a given product across brands
  # and return the lowest ppq brand name and quantity
  def best_price(product_name)
  end
end
best_price_checker = BestPriceChecker.new
best_price_checker.add_product()

