class CashRegister
  
attr_accessor :total, :discount, :price, :quantity, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @discount = 20
    @price = price
    @quantity = quantity
    @items = []
  end
  
def add_item(title, price, quantity = 1)
  self.total += price*quantity
end


   def apply_discount()
    if discount == 0 
      "There is no discount to apply."
    else
      self.total = (total * ((100.0 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{self.total}."
    end
  end
      
  end

def items 
  items = []
end

def void_last_transaction
  @total -= @price
end

end
