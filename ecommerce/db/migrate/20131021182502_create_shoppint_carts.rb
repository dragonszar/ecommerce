class CreateShoppintCarts < ActiveRecord::Migration
  def self.up
    create_table :shoppint_carts do |t|
      t.has_many :item
      t.int :quantit

      t.timestamps
    end
  end

  def self.down
    drop_table :shoppint_carts
  end
end
