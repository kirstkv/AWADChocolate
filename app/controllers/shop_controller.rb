class ShopController < ApplicationController

  def index
    @items = Item.find(:all, :order => "date_available desc")
  end

end
