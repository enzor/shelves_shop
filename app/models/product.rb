class Product < ActiveRecord::Base
  belongs_to :promotion
  
  validates_presence_of :name, :on => :create, :message => "Insert a valid name"
  validates_presence_of :price, :on => :create, :message => "Insert a price"
  validates_numericality_of :price, :on => :create, :message => "Please insert a VALID price"
  validates_presence_of :code, :on => :create, :message => "Insert a referral code"
end
