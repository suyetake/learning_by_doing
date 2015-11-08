# this is the class
class CashRegister
  def initialize
    @purchase = 0.0
    @total = 0.0
  end

  def total
    @total
  end

  def purchase(amount)
    @purchase = amount
    @total = @total + @purchase
  end

  def pay(amount)
    @change = @total - amount
  end

end
