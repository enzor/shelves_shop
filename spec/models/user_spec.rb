require 'spec_helper'

describe User do
  it "should create a new instance given valid attributes" do
    Factory.create(:user)
  end
  
  it "should not validate a user without any data" do
    user = Factory.build(:user, :username => nil, :password => nil ,:password_confirmation => nil, :email => nil)
    user.should_not be_valid
  end
  
  it "should not validate a user without an username" do
    user = Factory.build(:user, :username => nil)
    user.should_not be_valid
  end
  
  it "should not validate a user without a password" do
    user = Factory.build(:user,:password => nil)
    user.should_not be_valid
  end
  
  it "should not validate a user if gives a bad password confirmation" do
    user = Factory.build(:user,:password => "secret",:password_confirmation => "terces")
    user.should_not be_valid
  end
 
  it "should not validate a user without an email" do
    user = Factory.build(:user,:email => nil)
    user.should_not be_valid
  end
  
  it "should not validate a user if gives an email with a bad format" do
    user = Factory.build(:user,:email => "moe@springfield")
    user.should_not be_valid
  end

  

end
