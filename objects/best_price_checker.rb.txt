# BestPriceChecker class
# Homework 2 in Builtin and Custom Objects slide deck
# for now, assume unit is always ounces
class BestPriceChecker
  # assign an initial product when no values are passed in
  def initialize(brand = 'Generic', store = 'Safeway', product = 'ketchup', price = 2.00, quantity = 12, unit = 'oz')
    @orig_product = {}
    @orig_product[:brand] = brand
    @orig_product[:store] = store
    @orig_product[:product] = product
    @orig_product[:price] = price
    @orig_product[:quantity] = quantity
    @orig_product[:unit] = unit
    @orig_product[:price_per_quantity] =
      @orig_product[:price] /
        @orig_product[:quantity]
    @orig_product[:price] = to_dollar(@orig_product[:price])
    @orig_product[:price_per_quantity] = to_dollar(@orig_product[:price_per_quantity])
    puts 'Here is the best priced product so far:'
    puts @orig_product
    print 'it costs $' + @orig_product[:price_per_quantity]
    puts ' per ounce'
    puts ''
  end

  # convert amount to two decimal places for string outputs in $
  def to_dollar(amount)
    format('%.2f', amount)
  end

  # make another hash of product to compare the current product to:
  def another_product(brand = 'Heinz', store = 'Target', product = 'ketchup', price = 3.00, quantity = 16, unit = 'oz')
    @another_product = {}
    @another_product[:brand] = brand
    @another_product[:store] = store
    @another_product[:product] = product
    @another_product[:price] = price
    @another_product[:quantity] = quantity
    @another_product[:unit] = unit
    @another_product[:price_per_quantity] =
      @another_product[:price] /
        @another_product[:quantity]
    @another_product[:price] = to_dollar(@another_product[:price])
    @another_product[:price_per_quantity] = to_dollar(@another_product[:price_per_quantity])
    puts 'Here is another product:'
    puts @another_product
    print 'it costs $' + @another_product[:price_per_quantity]
    puts ' per ounce'
    puts ''
  end

  # Compare price per quantity across the initial product and the product hash created above
  # then return the lowest brand name and price per ounce
  # and reassign the initial product hash to the lowest priced product
  # NOTE: with default inputs, the second time this method is called, the products will match
  def best_price
    puts 'Comparing both..'
    puts''
    if @orig_product[:price_per_quantity] == @another_product[:price_per_quantity]
      print "Both #{@orig_product[:store]} #{@orig_product[:product]} and "
      puts "#{@another_product[:store]} #{@another_product[:product]}"
      puts "cost the same at $#{@orig_product[:price_per_quantity]} per ounce."
    elsif @orig_product[:price_per_quantity] < @another_product[:price_per_quantity]
      print "#{@orig_product[:store]} #{@orig_product[:product]} is still "
      puts "the best price at $#{@orig_product[:price_per_quantity]} per ounce."
    else
      # @orig_product[:price_per_quantity] > @another_product[:price_per_quantity]
      print "#{@another_product[:store]} #{@another_product[:product]} is now"
      puts " the best price at $#{@another_product[:price_per_quantity]} per ounce."

      # assign the newer product as the new best priced product:
      @orig_product = @another_product
    end
    puts''
  end
end
product1 = BestPriceChecker.new
product1.another_product
product1.best_price
product1.another_product('generic', 'WalMart', 'ketchup', 1.00, 8, 'oz')
product1.best_price
product1.another_product
product1.best_price
product1.another_product('generic', 'King Sooper', 'ketchup', 1.00, 8, 'oz')
product1.best_price
