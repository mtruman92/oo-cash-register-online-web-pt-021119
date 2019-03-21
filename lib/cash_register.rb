class CashRegister
  
attr_accessor :total, :discount, :price, :quantity, :items

  def initialize(total = 0)
    @total = total
    @discount = discount
    @discount = 20
    @price = price
    @quantity = quantity
    @items = []
  end
  
def add_item(title, price, quantity = 1)
  self.total += price*quantity
end

#def apply_discount()
# if @discount > 0
# #@total == (@price*@discount / 100)
# #@total -=@total * @discount / 100
# self.total == 0 ? 
# return "After the discount, the total comes to $#{total}."
 #else
   #return "There is no discount to apply."
 #end
#end
   def apply_discount()
    if discount != 0
      self.total = (total * ((100.0 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

def items 
  items = []
end

def void_last_transaction
  @total -= @price
end

end
