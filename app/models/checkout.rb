class Checkout < ActiveRecord::Base
  
  
  def scan(cart)
    results = {}
    Product.all.each do |c|
       results["#{c.code}"] = cart.line_items.find_all_by_product_id(c).to_a.size
    end
    return results;
  end
  
  
  def give_discounts(params,cart)
    @results = params
    @cart = cart
    @results.each do |c|
      @product = Product.find_by_code(c[0].to_s)
      @promo = Promotion.find(@product.promotion) if @product.promotion
        if @promo && @promo.is_active?

          @items = @cart.line_items.find_all_by_product_id(@product.id)
           case @promo.discount_type
             when 0 then
               logger.info("case 0, #{c[0]}, #{c[1]}, promo minimum cart value #{@promo.minimum_cart_value}, discount percentage #{@promo.discount_amount}%")
               if c[1] >= @promo.minimum_cart_value 
                 @items.each do |l|
                   l.unit_price = l.unit_price - (l.unit_price * (@promo.discount_amount/100))
                   l.save
                 end
               end
             when 1 then
             logger.info("case 1, #{c[0]}, #{c[1]}, minimum discount amount #{@promo.discount_amount.to_i}")
               f = 0
               @items.each do |l|
                 f += 1
                 if f > @promo.discount_amount.to_i
                   l.unit_price = 0.0
                   l.save
                   f = 0
                 end
               end
             when 2 then
               logger.info("case 2, #{c[0]}, #{c[1]}, 3 x 2 discount")
               f = 0
               @items.each do |l|
                 f += 1
                 if f == 3
                   l.unit_price = 0.0
                   l.save
                   f = 0
                 end
               end
             when 3 then
               logger.info("case 2, #{c[0]}, #{c[1]}, buy x pay y")
               f = 0
               @items.each do |l|
                 f += 1
                 if f == @promo.minimum_cart_value.to_i
                   l.unit_price = @promo.discount_amount - l.unit_price
                   l.save
                   f = 0
                 end
               end
            end
         end
       end
     @cart.save
  end
  
  
end
