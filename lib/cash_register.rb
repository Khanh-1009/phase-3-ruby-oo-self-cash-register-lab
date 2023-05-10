require 'pry'
class CashRegister
    attr_accessor :total, :discount, :items

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity = 1)
        @total = (price*quantity) + self.total
        quantity.times do 
            @items << title
        end
    end

    def apply_discount
        if self.discount > 0
            my_discount = (self.discount*0.01).to_f * self.total
            @total = (self.total - my_discount).to_i
            "After the discount, the total comes to $#{self.total}."  
        else
            "There is no discount to apply."
        end
    end
end