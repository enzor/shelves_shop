class CartsController < ApplicationController
  def show
    @cart = current_cart
    render :layout => false
  end
  
  def destroy
    @cart = Cart.find(params[:id])
    @cart.destroy 
    
    respond_to do |format|
      format.html { redirect_to(root_url, :notice => "The cart was successfully emptied" )}
    end
  end
  
  def checkout
    co = Checkout.new
    cart = Cart.find(params[:cart])
    products_hash = co.scan(cart)
    results = co.give_discounts(products_hash.to_a,cart)
    if cart.line_items.size == 0
      flash[:error]  = "Cannot proceed to a checkout with an empty cart!"
      redirect_to root_url
    elsif cart.save
      flash[:notice] = "Checkout successful! The total is: £#{cart.total_price}, you can check it out if you follow 'Current Cart'"
      redirect_to root_url
    else
      flash[:notice]  = "Checkout unsuccessful!"
      redirect_to root_url
    end
  end
  
end
