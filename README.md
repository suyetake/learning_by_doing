# learning_by_doing
> Description: Homework assignments for the Building the Toolbelt of a
 Junior Ruby on Rails developer class I took in 2015

### Objects directory: 
### Rewrote Product and Price_Comparison classes from scratch to achieve simplicity:

heinz = Product.new('Heinz', 5.75, 15)

store_brand = Product.new('Kroger', 3.00, 12)

comparitor = PriceComparison.new

better = comparitor.better_price(heinz, store_brand)

puts "The better product is the #{better.name} brand"

### Tests can be run in-line after the Class code or in irb:

> #### Tests
> irb -r './price_comparison.rb'

> ### second price (Kroger) is better
> heinz = Product.new('Heinz', 5.75, 15)
> store_brand = Product.new('Kroger', 3.00, 12)
> 
> comparitor = PriceComparison.new
> 
> better1 = comparitor.better_price(heinz, store_brand)
> puts "The better product is the #{better1.name} brand"
> 
> ### prices are equal, so first product (Heinz) remains
> heinz = Product.new('Heinz', 3.00, 12)
> store_brand = Product.new('Kroger', 3.00, 12)
> 
> comparitor = PriceComparison.new
> 
> better2 = comparitor.better_price(heinz, store_brand)
> puts "The better product is the #{better2.name} brand"
> 
> ### first price (Heinz) is better
> heinz = Product.new('Heinz', 3.00, 12)
> store_brand = Product.new('Kroger', 5.75, 15)
> 
> comparitor = PriceComparison.new
> 
> better3 = comparitor.better_price(heinz, store_brand)
> puts "The better product is the #{better3.name} brand"


### Prior work here for reference:
objects/best_price_checker_better_imho.rb

objects/best_price_checker_dev3.rb.txt

objects/best_price_checker.rb.txt

