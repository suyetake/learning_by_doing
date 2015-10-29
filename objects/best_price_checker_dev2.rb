# BestPriceChecker class
# Homework 2 in Builtin and Custom Objects slide deck
# :brand, :store, :product, :price, :quantity, :unit, :quantity_price

# SPAGHETTI CODE AT THE MOMENT.. TRYING SO MANY APPROACHES
# SEE "PROBLEM" COMMENTS BELOW

class BestPriceChecker
  attr_reader :brand, :store, :product, :price, :quantity, :unit, :quantity_price

  def initialize(brand = 'Generic',
    store = 'Safeway',
    product = 'ketchup',
    price = 2.00,
    quantity = 12,
    # for now, for quantity_price calculations, assume unit is always ounces
    unit = 'oz')
    @brand = brand
    @store = store
    @product = product
    @price = price
    @quantity = quantity
    @unit = unit
    @quantity_price = price / quantity
  end

  def display_name
    "#{store} #{brand} #{product}"
  end

  ## PROBLEM HERE: it won't convert to two decimal places when called later
  def self.display_quantity_price
    format('%.2f', @quantity_price)
  end

  def apply_price_per_quantity(product_hash)
    product_hash[:price_per_quantity] =
      product_hash[:price] /
        product_hash[:quantity]
  end

  def display_best_priced_product
    @product1_hash[:price] = to_dollar(@product1_hash[:price])
    @product1_hash[:price_per_quantity] = to_dollar(@product1_hash[:price_per_quantity])
    puts ''
    puts 'Here is the best priced product so far:'
    puts @product1_hash
    print 'it costs $' + @product1_hash[:price_per_quantity]
    puts ' per ounce'
    puts ''
  end

  def self.to_dollar(amount)
    format('%.2f', amount)
  end

  def self.compare_products(prior_product, new_product)
    puts "Here is the new product: #{new_product.brand} #{new_product.product} at #{new_product.store}"
    puts "Here is the prior product: #{prior_product.brand} #{prior_product.product} at #{prior_product.store}"
    puts "new product unit price is: #{new_product.quantity_price}"
    print "current product unit price is: "

    ## PROBLEM HERE: it won't convert to two decimal places when called
    # puts new_product.display_quantity_price
    puts new_product.quantity_price.round(2)

    puts "prior product unit price is: #{prior_product.quantity_price}"

    if new_product.quantity_price <  prior_product.quantity_price
      puts "#{new_product.display_name} is a better priced product!"
      # puts new_product

      # assign this to be the new best priced product for future comparisons:
      # prior_product = new_product
    else
      puts "#{new_product.display_name} is still the better priced product!"
    end
  end

  def self.get_another_product_to_compare
    @product2_hash = BestPriceChecker.new(
      brand = 'Heinz',
      store = 'Target',
      product = 'ketchup',
      price = 2.84,
      quantity = 32,
      unit = 'oz')
    apply_price_per_quantity(@product2_hash)
    puts 'Another product has been added'
    compare_products(@product1_hash, @product2_hash)
    puts 'Products have been compared'
  end

  # get_another_product_to_compare
  # apply_price_per_quantity(@product2_hash)
  # compare_products(@product1_hash, @product2_hash)
  # display_best_priced_product

#  @product1_hash.get_another_product_to_compare

end


product3 = BestPriceChecker.new

product4 = BestPriceChecker.new(
  brand = 'Market Pantry',
  store = 'Target',
  product = 'ketchup',
  price = 3.00,
  quantity = 16,
  unit = 'oz')
BestPriceChecker.compare_products(product3, product4)

product5 = BestPriceChecker.new(
  brand = 'Market Pantry',
  store = 'Target',
  product = 'mustard',
  price = 3.00,
  quantity = 160,
  unit = 'oz')
# BestPriceChecker.compare_products(product4, product5)
# product3.compare_products(product3, product4)
# product3.display_best_priced_product
