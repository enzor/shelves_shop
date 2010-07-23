class CreatePromotions < ActiveRecord::Migration
  def self.up
    create_table :promotions do |t|
      t.string :code
      t.integer :discount_type, :default => 0
      t.float :discount_amount,:default => 0.0, :null => false
      t.integer :product_id
      t.datetime :start
      t.datetime :end
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :promotions
  end
end
