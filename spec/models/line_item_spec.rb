require File.dirname(__FILE__) + '/../spec_helper'

describe LineItem do
  it "should be valid" do
    LineItem.new.should be_valid
  end
end
