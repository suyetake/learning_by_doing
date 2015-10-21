# CashRegister Class
# homework 1 in Builtin and Custom Objects slide deck
class CashRegister
  def initialize
    @balance = 0.0
  end

  def purchase(purchase)
    @balance += purchase.to_f
  end

  def total
    @balance
  end

  def pay_cash(cash)
    change = cash.to_f - @balance
    @balance = 0.0
    change
  end
end
