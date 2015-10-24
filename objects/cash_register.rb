# CashRegister Class
# homework 1 in Builtin and Custom Objects slide deck
class CashRegister
  def initialize
    @balance = 0.00
  end

  # FEEDBACK: this rounding was deemed unnecessary
  # by the format which accomplishes the same thing

  # rounding method, which assumes 2 decimal places
  # unless told otherwise by passing a second parameter
  # def round_to(amount, d_places = 2)
  #  amount.round(d_places)
  # end

  # to get the output to two (or other) decimal places
  def to_dollar(amount)
    # round_to(@balance)
    format('%.2f', amount)
  end

  def purchase(purchase)
    @balance += purchase
    to_dollar(@balance)
  end

  def total
    to_dollar(@balance)
  end

  def pay(cash)
    # since @balance may be in the form of a string
    # from prior to_dollar calls, ensure the math
    # occurs in floating point by making cash.to_f
    change = cash.to_f - @balance

    ## not needed I think ##
    # change = round_to(change)

    if change < 0.00
      # puts "#{change.abs} more money is needed, please.."
      @balance = change.abs
      puts "Your new total is $#{to_dollar(@balance)}"

    else
      @balance = 0.00
      puts "Your change is $#{to_dollar(change)}"
    end
  end
end
