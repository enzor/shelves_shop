Given /^a valid promotion$/ do
  Factory.create(:promotion,:code => "DISCOUNT_MY_GEL",
                            :name => "Shower Gel Discount",
                            :discount_type => 3,
                            :start => DateTime.now,
                            :end => 1.year.from_now,
                            :description => "2 Shower Gel will make you pay only 2£",
                            :discount_amount => 2,
                            :minimum_cart_value => 2,
                            :active => true
                )
end
