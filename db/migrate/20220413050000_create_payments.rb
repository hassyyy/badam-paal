class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|

      t.timestamps
      t.integer :vendor_id
      t.integer :amount
      t.date :date
    end
  end
end
