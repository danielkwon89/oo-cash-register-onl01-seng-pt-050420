class CashRegister
  
  attr_accessor :total, :discount
  
  @@items = []
  
  def self.items
    @@items
  end
  
  def initialize(employee_discount = 0)
    @total = 0
    @discount = employee_discount
  end
  
  def add_item(title, price, quantity = 1)
    self.items << title
    @total += price * quantity
  end
  
  def apply_discount
    return "There is no discount to apply." if discount == 0
    @total -= (@total * @discount/100)
    "After the discount, the total comes to $#{@total}."
  end
  
  def items
    self.items
  end
end