class CashRegister
    attr_accessor :total, :discount, :last_transaction, :items

    def initialize discount = 0
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item title, price, quantity = 1
        self.last_transaction = price * quantity
        self.total += last_transaction
        quantity.times do
            self.items << title
        end
    end

    def apply_discount
        if self.discount != 0
            self.total -= total * discount / 100
            "After the discount, the total comes to $#{total}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total -= last_transaction
    end
end
