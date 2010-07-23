class AddMinimumCartValueToPromotions < ActiveRecord::Migration
  def self.up
        add_column :promotions, :minimum_cart_value , :integer , :default => 0
  end

  def self.down
        remove_column :promotions, :minimum_cart_value
  end
end
