class CashRegister
    attr_accessor :total, :discount, :item, :final_transaction

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []

    end
    def add_item(title, price, quantity = 1)
       quantity.times {@items << title}
       @last_item = price * quantity
       self.total += @last_item
    end
    def apply_discount
        if self.discount == 0
            return "There is no discount to apply."
        else "After the discount, the total comes to $#{(self.total -= @discount * 10).to_i}."
        end
    end
    def items
        @items
    end
    def void_last_transaction
        self.total -= @last_item
    end

end