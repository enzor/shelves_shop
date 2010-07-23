class Promotion < ActiveRecord::Base
  TYPES = {
    'Percent of total order (for item category)' => 0,
    'Buy x get 1 free' => 1, 
    '3 x 2' => 2 ,
    'Buy x pay y' => 3
  }
  
  has_many :products
	validates_presence_of :code, :discount_amount, :discount_type, :description
	validates_uniqueness_of :code
	validates_numericality_of :discount_amount, :minimum_cart_value
	
	before_save :clean_code
	
	def clean_code
	  self.code.gsub!(' ', '')
  end
  
  def is_active?
    self.active
  end
  
end
