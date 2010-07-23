Given /^promotions are set for the right products$/ do
  Factory.create(:promotion,:code => "DISCOUNT_MY_GEL",
                            :name => "Shower Gel Discount",
                            :discount_type => 3,
                            :description => "2 Shower Gel will make you pay only 2£",
                            :discount_amount => 2,
                            :minimum_cart_value => 2,
                            :products => [@shower_gel],
                            :active => true
                )
  Factory.create(:promotion,:code => "GIMME_MORE_ORANGES",
                            :name => "Oranges Discount",
                            :discount_type => 2,
                            :description => "3x2 on Oranges!",
                            :discount_amount => 0,
                            :products => [@orange],
                            :active => true
                )
end


Given /^an empty cart$/ do
  @cart = Factory.create(:cart, :user => @user )
end

When /^I add "([^"]*)" of "([^"]*)" to the cart$/ do |quantity, item|
  @product = Product.find_by_name(item)
  Factory.create(:line_item, :cart => @cart, :product => @product, :quantity => quantity.to_i ,:unit_price => @product.price)
end