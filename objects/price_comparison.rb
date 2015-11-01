require_relative '../objects/product'

# Class to compare attributes of two products
class PriceComparison
  def to_dollar(amount)
    format('%.2f', amount)
  end

  def display_current
    print "current product is #{@current_product.name} at "
    print "$#{to_dollar(@current_product.price)} "
    puts "for #{@current_product.size} ounces"
  end

  def display_next
    print "next product is #{@next_product.name} at "
    print "$#{to_dollar(@next_product.price)} "
    puts "for #{@next_product.size} ounces"
  end

  def display_best
    print "best product is #{@product.name} at "
    print "$#{to_dollar(@product.price)} "
    puts "for #{@product.size} ounces"
  end

  def better_price(current_product, next_product)
    @current_product = current_product
    @next_product = next_product
    current_deal = @current_product.price / @current_product.size
    next_deal = @next_product.price / @next_product.size
    # display_current
    # display_next
    @product = @next_product if next_deal < current_deal
    @product
    # display_best
  end
end

##
#
# def initialize
#   @product = Product.new('Heinz Ketchup', 4.2, 16)
#   display_best
# end
#
# def initialize(product1, product2)
#   @p1 = product1
#   @p2 = product2
#   product3 = Product.new('foo', 12, 16)
#   puts "product1 size is #{product1.size}"
#   puts "product2 size is #{product2.size}"
#   puts "product3 size is #{product3.size}"
# end
#
# puts "product1 is #{@p1.name} at $#{to_dollar(@p1.price)} /
# for #{@p1.size} ounces"
#
# puts "product2 is #{@p2.name} at $#{to_dollar(@p2.price)} /
# for #{@p2.size} ounces"
