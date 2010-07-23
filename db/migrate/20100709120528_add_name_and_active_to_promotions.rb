class AddNameAndActiveToPromotions < ActiveRecord::Migration
  def self.up
    add_column :promotions, :name, :string
    add_column :promotions, :active, :boolean
  end

  def self.down
    remove_column :promotions, :name
    remove_column :promotions, :active
  end
end
