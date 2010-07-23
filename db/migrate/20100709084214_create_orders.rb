class CreateOrders < ActiveRecord::Migration
  def self.up
    create_table :orders do |t|
      t.integer :cart_id
      t.string :ip_address
      t.string :first_name
      t.string :last_name
      t.string :cart_type
      t.date :card_espires_on
      t.timestamps
    end
  end
  
  def self.down
    drop_table :orders
  end
end
