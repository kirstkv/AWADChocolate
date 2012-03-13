module ShopHelper
  private
  def find_cart
    session[:cart] ||=Cart.new
  end
end
