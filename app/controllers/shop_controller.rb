class ShopController < ApplicationController

  def index
    @items = Item.find(:all, :order => "date_available desc")
  end
  
  def add_to_cart
    @item=Item.find(params[:id])
    @cart= find_cart
    @cart.add_item(@item)

    redirect_to :action => "display_cart"
  end
  
  def display_cart
    @cart= find_cart
    @things=@cart.things
    @items=Item.find(:all)
  end
  
    private
  def find_cart
    session[:cart] ||=Cart.new
  end

end
