class CashRegister 
  attr_accessor :items, :total, :discount, :last_transaction 
  
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end
 
  def add_item(item, price, quantity=1)
    quantity.times {
      @items << item
    }
    self.total += price * quantity
    @last_transaction = price * quantity
  end
end 