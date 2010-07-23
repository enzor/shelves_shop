class LineItemsController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    @line_item = LineItem.create!(:cart => current_cart, :product => @product, :quantity => 1, :unit_price => @product.price)
    flash[:notice] = "Added #{@product.name} to cart."
    redirect_to root_url
  end
  
  def destroy
    @line_item =  LineItem.find(params[:id])
    @line_item.destroy
    
    respond_to do |format|
      format.html { redirect_to(root_url, :notice => 'The item was successfully destroyed!') }
    end
  end
end
