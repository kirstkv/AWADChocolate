class LineItem < ActiveRecord::Base
  belongs_to :item
  
    def self.for_item(item)
    thing = self.new
    thing.item    = item
    thing.quantity    = 1
    thing.unit_price = item.price
    thing
    end
  
end
