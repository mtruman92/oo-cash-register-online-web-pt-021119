class CashRegister
  
attr_accessor :total, :discount, :price, :quantity, :items

  def initialize(total = 0)
    @total = total
    @discount = discount
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
    if @discount > 0
      @discount = @discount/100.to_f
      @total = @total - (@total * (@discount))
      "After the discount, the total comes to $#{@total.to_i}."
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
