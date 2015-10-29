# BestPriceChecker class
# Homework 2 in Builtin and Custom Objects slide deck
# for now, assume unit is always ounces

class BestPriceChecker

  # assign an initial product when no values are passed in
  def initialize(brand = 'Generic', store = 'Safeway', product = 'ketchup', price = 2.00, quantity = 12, unit = 'oz')
    @hash_of_orig_product = {}
    @hash_of_orig_product[:brand] = brand
    @hash_of_orig_product[:store] = store
    @hash_of_orig_product[:product] = product
    @hash_of_orig_product[:price] = price
    @hash_of_orig_product[:quantity] = quantity
    @hash_of_orig_product[:unit] = unit
    @hash_of_orig_product[:price_per_quantity] =
      @hash_of_orig_product[:price] /
        @hash_of_orig_product[:quantity]
    @hash_of_orig_product[:price] = to_dollar(@hash_of_orig_product[:price])
    @hash_of_orig_product[:price_per_quantity] = to_dollar(@hash_of_orig_product[:price_per_quantity])
    puts 'Here is the best priced product so far:'
    puts @hash_of_orig_product
    print 'it costs $' + @hash_of_orig_product[:price_per_quantity]
    puts ' per ounce'
    puts ''
  end

  # convert amount to two decimal places for string outputs in $
  def to_dollar(amount)
    format('%.2f', amount)
  end

  # make another hash of product to compare the current product to:
  def self.another_product(brand = 'Heinz', store = 'Target', product = 'ketchup', price = 3.00, quantity = 16, unit = 'oz')
    @hash_of_another_product = {}
    @hash_of_another_product[:brand] = brand
    @hash_of_another_product[:store] = store
    @hash_of_another_product[:product] = product
    @hash_of_another_product[:price] = price
    @hash_of_another_product[:quantity] = quantity
    @hash_of_another_product[:unit] = unit
    @hash_of_another_product[:price_per_quantity] =
      @hash_of_another_product[:price] /
        @hash_of_another_product[:quantity]
    @hash_of_another_product[:price] = to_dollar(@hash_of_another_product[:price])
    @hash_of_another_product[:price_per_quantity] = to_dollar(@hash_of_another_product[:price_per_quantity])
    puts 'Here is another product:'
    puts @hash_of_another_product
  end

  # Compare price per quantity across the initial product and the product hash created above
  # then return the lowest brand name and price per ounce
  # and reassign the initial product hash to the lowest priced product
  # NOTE: with default inputs, the second time this method is called, the products will match
  def self.best_price
    if @hash_of_orig_product[:price_per_quantity] = @hash_of_another_product[:price_per_quantity]
      print "Both #{@hash_of_orig_product[:store]} #{@hash_of_orig_product[:product]} and "
      puts "#{@hash_of_another_product[:store]} #{@hash_of_another_product[:product]}"
      puts " cost the same at #{@hash_of_orig_product[:price_per_quantity]} per ounce."
    elsif @hash_of_orig_product[:price_per_quantity] < @hash_of_another_product[:price_per_quantity]
      print "#{@hash_of_orig_product[:store]} #{@hash_of_orig_product[:product]} is still "
      puts "the best price at #{@hash_of_orig_product[:price_per_quantity]} per ounce."
    else
      # @hash_of_orig_product[:price_per_quantity] > @hash_of_another_product[:price_per_quantity]
      print "#{@hash_of_another_product[:store]} #{@hash_of_another_product[:product]} is now"
      puts " the best price at #{@hash_of_orig_product[:price_per_quantity]} per ounce."

      # assign the newer product as the new best priced product:
      @hash_of_orig_product = @hash_of_another_product
    end
  end
end
product1 = BestPriceChecker.new
product1.another_product
product1.best_price

