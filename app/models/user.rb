class User < ActiveRecord::Base
  acts_as_authentic
  has_one :cart
  
  #
  # => no need to use validations here. Authlogic handles all the basic authentication data
  #
  
  named_scope :with_role, lambda { |role| {:conditions => "roles_mask & #{2**ROLES.index(role.to_s)} > 0"} }
  
  ROLES = %w[admin user]
  
  def roles=(roles)
    self.roles_mask = (roles & ROLES).map { |r| 2**ROLES.index(r) }.sum
  end
  
  def roles
    ROLES.reject { |r| ((roles_mask || 0) & 2**ROLES.index(r)).zero? }
  end
  
  def role?(role)
    roles.include? role.to_s
  end
  
  def cart_size
    if self.cart
      return self.cart.line_items.size
    else
      return 0
    end
  end
  
end
