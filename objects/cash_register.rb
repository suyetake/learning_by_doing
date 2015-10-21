# CashRegister Class
# homework 1 in Builtin and Custom Objects slide deck
class CashRegister
  def initialize
    @balance = 0.0
  end

  def purchase(purchase)
    @balance += purchase.to_f
    @balance.round(2)
  end

  def total
    @balance.round(2)
  end

  def pay_cash(cash)
    change = cash.to_f - @balance
    if change.round(2) < 0.0
      puts "#{change.abs} more money is needed, please.."
      @balance = change.abs
    else
      @balance = 0.0
      change
    end
  end
end
