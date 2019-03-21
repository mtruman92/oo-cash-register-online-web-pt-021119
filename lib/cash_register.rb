class CashRegister
  
attr_accessor :total, :discount, :quantity, :item, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
def add_item(title, price, quantity = 1)
  self.total += price*quantity
  quantity.times do
  @items << title
end
 @last_transaction = price * quantity
 end
 

   def apply_discount
    if @discount == 0 
      "There is no discount to apply."
    else
      employee_discount = @discount.to_f/100 * @total
      @total -= employee_discount
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

def items 
 @items
end

def void_last_transaction
  @total -= @last_transaction
end


end
