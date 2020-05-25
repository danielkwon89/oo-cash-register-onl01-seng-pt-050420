class CashRegister
  
  attr_accessor :total, :discount
  
  def initialize(employee_discount = 0)
    @total = 0.0 
    @discount = employee_discount
  end
  
  def add_item(title, price, quantity = 0)
    @total = @total += price
  end
  
end