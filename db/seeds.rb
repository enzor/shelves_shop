User.create!(:username => "enzoriv", 
             :email => "vincenzo.rivello@gmail.com", 
             :password => "pippospazio", 
             :password_confirmation => "pippospazio",
             :roles_mask => 1)
             
@orange = Product.create!( :code => "OR1", :name => "Orange", :price => "0.29" );
@bread = Product.create!( :code => "BR1", :name => "Bread", :price => "1.00" );
@milk = Product.create!( :code => "MK1", :name => "Milk", :price => "0.90" );
@shower_gel = Product.create!( :code => "SG1", :name => "Shower Gel", :price => "1.19" );

Promotion.create!(
          :code => "GIMME_MORE_ORANGES",
          :name => "Oranges Discount",
          :discount_type => 2,
          :start => DateTime.now,
          :end => 1.year.from_now,
          :description => "3x2 on Oranges!",
          :products => [@orange],
          :discount_amount => 0,
          :active => true
)

Promotion.create!(
          :code => "DISCOUNT_MY_GEL",
          :name => "Shower Gel Discount",
          :discount_type => 3,
          :start => DateTime.now,
          :end => 1.year.from_now,
          :description => "2 Shower Gel will make you pay only 2£",
          :discount_amount => 2,
          :minimum_cart_value => 2,
          :products => [@shower_gel],
          :active => true
)