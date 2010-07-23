require 'spec_helper'

describe Product do

  it "should create a new product given valid attributes" do
    product = Factory.create(:product,:code => "OR1",:name => "Orange", :price => 0.29)
    product.should be_valid
  end
  
  it "should not create a valid instance if the product is without any data" do
    product = Factory.build(:product)
    product.should_not be_valid
  end
  
  it "should not create a valid instance if the product is without a code" do
    product = Factory.build(:product,:name =>"Orange",:price => 0.29)
    product.should_not be_valid
  end
  
  it "should not create a valid instance if the product is without a name" do
    product = Factory.build(:product,:code => "OR1", :price => 0.29)
    product.should_not be_valid
  end
  
  it "should not create a valid instance if the product is without a price" do
    product = Factory.build(:product,:code => "OR1",:name => "Orange")
    product.should_not be_valid
 end
 
 it "should not create a new product if the price is a not a number" do
   product = Factory.build(:product,:code => "OR1",:name => "Orange",:price => "cicciopasticcio")
   product.should_not be_valid
 end
end
