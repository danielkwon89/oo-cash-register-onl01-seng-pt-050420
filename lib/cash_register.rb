class CashRegister
  
  attr_accessor :total, :discount
  
  def initialize(employee_discount = 0)
    @total = 0.0 
    @discount = employee_discount
  end
  
  def add_item(title, price, quantity = 1)
    @total += price * quantity
  end
  
  def apply_discount
    @total -= (@total * @discount/100)
    puts "After the discount, the total comes to #{total}."
  end
end