# BestPriceChecker class
# Homework 2 in Builtin and Custom Objects slide deck

class BestPriceChecker
  def initialize(brand = 'Generic',
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
    apply_price_per_quantity(@product1_hash)
    puts ''
    puts 'Here is the product to be compared:'
    puts @product1_hash
    puts ''
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

  def to_dollar(amount)
    format('%.2f', amount)
  end

  def compare_products(prior_product, new_product)
    if new_product[:price_per_quantity] < prior_product[:price_per_quantity]
      puts 'You found a better priced product!'
      puts new_product

      # assign this to be the new best priced product for future comparisons:
      prior_product = new_product
    else
      puts 'The other product was better priced.'
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
product3.compare_products(product3, product4)
# product3.compare_products(product3, product4)
product3.display_best_priced_product
