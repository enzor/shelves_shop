require File.dirname(__FILE__) + '/../spec_helper'

describe Cart do
  it "should create a valid instance if the cart is empty" do
    Factory.create(:cart).should be_valid
  end
end
