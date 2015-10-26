# BestPriceChecker class
# Homework 2 in Builtin and Custom Objects slide deck
class BestPriceChecker
  # attr_reader :product, :price, :quantity, :unit

  # def product
  #   @product
  # end

  def initialize(brand = 'Heinz', store = 'Safeway', product = 'ketchup', price = 2.00, quantity = 12, unit = 'oz')
    # @product = p
    # @price = price
    # @quantity = quantity
    # @unit = unit
    # for now, assume unit is always ounces
    @hash_of_products = {}
    @hash_of_products[:brand] = brand
    @hash_of_products[:store] = store
    @hash_of_products[:product] = product
    @hash_of_products[:price] = price
    @hash_of_products[:quantity] = quantity
    @hash_of_products[:unit] = unit
    @hash_of_products[:price_per_quantity] =
      @hash_of_products[:price] /
        @hash_of_products[:quantity]
    @hash_of_products[:price] = to_dollar(@hash_of_products[:price])
    @hash_of_products[:price_per_quantity] = to_dollar(@hash_of_products[:price_per_quantity])
    puts 'Here is the best priced product so far:'
    puts @hash_of_products
    print 'it costs $' + @hash_of_products[:price_per_quantity]
    puts ' per ounce'
    puts ''
  end

  def to_dollar(amount)
    format('%.2f', amount)
  end

  def add_product
    puts 'Product has been added'
  end

  def add_price
    puts 'Price has been added'
  end

  def add_quantity
    puts 'Quantity has been added'
  end

  def add_unit
    puts 'Unit has been added'
  end

  # discover ppq (price per quantity) and store value
  def calc_price_per_quantity
    # @price_per_quantity = @price / @quantity
    # @price_per_quantity = format('%.2f', @price_per_quantity)
    # puts "#{@price_per_quantity}"
  end

  # compare ppq stored for a given product across brands
  # and return the lowest ppq brand name and quantity
  def best_price
  end
end
best_price_checker = BestPriceChecker.new
best_price_checker.add_product
best_price_checker.calc_price_per_quantity
