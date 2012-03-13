class Cart
  
  attr_reader :things
  
  def initialize
    @things = []
  end
  

  def add_item (item)
    current_thing=[]
    current_thing << LineItem.for_item(item) # @things.find {|thing| thing.item == item}
    #if current_thing
      #current_thing.increment_quantity
    #else
      #current_thing = item
      #@things << current_thing
    #end
    #current_thing
  end

  
  def total_things
    @things.sum { |thing| thing.quantity }
  end
  
  
  def total_price
    @things.sum { |thing| thing.price }
  end
end