# BestPriceChecker class
# Homework 2 in Builtin and Custom Objects slide deck
class BestPriceChecker

  def initialize(brand = 'Heinz',
    store = 'Safeway',
    product = 'ketchup',
    price = 2.00,
    quantity = 12,
    # for now, assume unit is always ounces
    unit = 'oz')
    @product1_hash = {}
    @product1_hash[:brand] = brand
    @product1_hash[:store] = store
    @product1_hash[:product] = product
    @product1_hash[:price] = price
    @product1_hash[:quantity] = quantity
    @product1_hash[:unit] = unit
  end

  def apply_price_per_quantity(product_hash)
    product_hash[:price_per_quantity] =
      product_hash[:price] /
        product_hash[:quantity]
  end

  def best_priced_product
    @product1_hash[:price] = to_dollar(@product1_hash[:price])
    @product1_hash[:price_per_quantity] = to_dollar(@product1_hash[:price_per_quantity])
    puts 'Here is the best priced product so far:'
    puts @product1_hash
    print 'it costs $' + @product1_hash[:price_per_quantity]
    puts ' per ounce'
    puts ''
  end

  def to_dollar(amount)
    format('%.2f', amount)
  end

  def get_another_product_to_compare
    @product2_hash = BestPriceChecker.new(
      brand = 'Market Pantry',
      store = 'Target',
      product = 'ketchup',
      price = 3.00,
      quantity = 16,
      unit = 'oz')
    puts 'Product has been added'
  end

  def compare_products(prior_product, new_product)
    if new_product[:price_per_quantity] < prior_product[:price_per_quantity]
      puts 'You found a better priced product!'

    end
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

  apply_price_per_quantity(@product1_hash)
  best_priced_product
  get_another_product_to_compare
  apply_price_per_quantity(@product2_hash)
  compare_products(@product1_hash, @product2_hash)
  best_priced_product
end
product3 = BestPriceChecker.new
product3.add_product
product4 = BestPriceChecker.new(
  brand = 'Market Pantry',
  store = 'Target',
  product = 'ketchup',
  price = 3.00,
  quantity = 16,
  unit = 'oz')
product4.add_product
BestPriceChecker.compare_products(product3, product4)
best_priced_product
