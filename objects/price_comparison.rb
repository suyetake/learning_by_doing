require_relative '../objects/product'

# Class to compare attributes of two products
# all code makes rubocop happy,
# commented out extra displays and logic not asked for
class PriceComparison
  def to_dollar(amount)
    format('%.2f', amount)
  end

  def display_next
    print "next product is #{@next_product.name} at "
    print "$#{to_dollar(@next_product.price)} "
    puts "for #{@next_product.size} ounces"
  end

  def display_best
    print "best product is #{@current_product.name} at "
    print "$#{to_dollar(@current_product.price)} "
    puts "for #{@current_product.size} ounces"
  end

  def better_price(current_product, next_product)
    @current_product = current_product
    @next_product = next_product
    # @same = false
    current_deal = @current_product.price / @current_product.size
    next_deal = @next_product.price / @next_product.size
    puts "deals compared: #{to_dollar(current_deal)} #{to_dollar(next_deal)}"
    # display_current
    # display_next
    @current_product = @next_product if next_deal < current_deal
    # @same = true if next_deal == current_deal
    # display_best
    @current_product
  end
end

## Tests
## second price (Kroger) is better
heinz = Product.new('Heinz', 5.75, 15)
store_brand = Product.new('Kroger', 3.00, 12)

comparitor = PriceComparison.new

better1 = comparitor.better_price(heinz, store_brand)
puts "The better product is the #{better1.name} brand"

## prices are equal, so first product (Heinz) remains
heinz = Product.new('Heinz', 3.00, 12)
store_brand = Product.new('Kroger', 3.00, 12)

comparitor = PriceComparison.new

better2 = comparitor.better_price(heinz, store_brand)
puts "The better product is the #{better2.name} brand"

## first price (Heinz) is better
heinz = Product.new('Heinz', 3.00, 12)
store_brand = Product.new('Kroger', 5.75, 15)

comparitor = PriceComparison.new

better3 = comparitor.better_price(heinz, store_brand)
puts "The better product is the #{better3.name} brand"
