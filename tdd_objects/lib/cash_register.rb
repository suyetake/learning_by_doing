# this is the class
class CashRegister
  attr_reader(:total, :purchase, :change)

  def initialize
    @purchase = 0.0
    @total = 0.0
    @change = 0.0
  end

  def purchase(amount)
    @purchase = amount
    @total += @purchase
    @total = format('%.2f', @total).to_f
  end

  def pay(amount)
    if amount > @total
      @change = (@total - amount).abs
      @total = 0.0
      @change = format('%.2f', @change).to_f
      "Your change is $#{@change}"
    else
      @total -= amount
      'Thank you for your payment, no change.'
    end
  end
end
