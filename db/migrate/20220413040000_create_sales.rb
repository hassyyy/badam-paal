class CreateSales < ActiveRecord::Migration[7.0]
  def change
    create_table :sales do |t|

      t.timestamps
      t.integer :product_id
      t.integer :vendor_id
      t.integer :quantity
      t.date :date
    end
  end
end
