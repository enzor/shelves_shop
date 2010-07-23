require 'spec_helper'

describe Promotion do
  it "should create a new instance given valid attributes" do
    promotion = Factory.build(:promotion,
                              :code => "DISCOUNT_MY_GEL",
                              :name => "Shower Gel Discount",
                              :discount_type => 3,
                              :description => "2 Shower Gel will make you pay only 2£",
                              :discount_amount => 2,
                              :minimum_cart_value => 2,
                              :active => true
                  )
                  
    promotion.should be_valid
  end
  
  
  it "should not validate a valid instance without a code" do
    promotion = Factory.build(:promotion,
                              :name => "Shower Gel Discount",
                              :discount_type => 3,
                              :description => "2 Shower Gel will make you pay only 2£",
                              :discount_amount => 2,
                              :minimum_cart_value => 2,
                              :active => true
                  )
                  
    promotion.should_not be_valid
  end
  
  it "should not validate a valid instance without a discount_type" do
    promotion = Factory.build(:promotion,
                              :code => "DISCOUNT_MY_GEL",
                              :discount_type => nil,
                              :name => "Shower Gel Discount",
                              :description => "2 Shower Gel will make you pay only 2£",
                              :discount_amount => 2,
                              :minimum_cart_value => 2,
                              :active => true
                  )
                  
    promotion.should_not be_valid
  end
  
  it "should not validate a valid instance without a discount_amount" do
    promotion = Factory.build(:promotion,
                              :code => "DISCOUNT_MY_GEL",
                              :name => "Shower Gel Discount",
                              :discount_type => 3,
                              :description => "2 Shower Gel will make you pay only 2£",
                              :discount_amount => nil,
                              :minimum_cart_value => 2,
                              :active => true
                  )
                  
    promotion.should_not be_valid
  end
  
  it "should not validate a valid instance without a description" do
    promotion = Factory.build(:promotion,
                              :code => "DISCOUNT_MY_GEL",
                              :name => "Shower Gel Discount",
                              :discount_type => 3,
                              :discount_amount => 2,
                              :minimum_cart_value => 2,
                              :active => true
                  )
                  
    promotion.should_not be_valid
  end
  
  it "should not validate a valid instance if discount_amout is not a number" do
    promotion = Factory.build(:promotion,
                              :code => "DISCOUNT_MY_GEL",
                              :name => "Shower Gel Discount",
                              :discount_type => 3,
                              :description => "2 Shower Gel will make you pay only 2£",
                              :discount_amount => "pizza",
                              :minimum_cart_value => 2,
                              :active => true
                  )
                  
    promotion.should_not be_valid
    
  end
  
  it "should not validate a valid instance if minimum_cart_value is not a number" do
    promotion = Factory.build(:promotion,
                              :code => "DISCOUNT_MY_GEL",
                              :name => "Shower Gel Discount",
                              :discount_type => 3,
                              :description => "2 Shower Gel will make you pay only 2£",
                              :discount_amount => 2,
                              :minimum_cart_value => "patatine",
                              :active => true
                  )
                  
    promotion.should_not be_valid
  end
end
