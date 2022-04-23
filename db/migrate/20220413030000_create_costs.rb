class CreateCosts < ActiveRecord::Migration[7.0]
  def change
    create_table :costs do |t|

      t.timestamps
      t.integer :product_id
      t.integer :vendor_id
      t.integer :amount
    end
  end
end
