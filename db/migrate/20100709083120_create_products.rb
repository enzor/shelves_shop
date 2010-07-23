class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.string :code
      t.integer :promotion_id
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
