class CreateVendors < ActiveRecord::Migration[7.0]
  def change
    create_table :vendors do |t|

      t.timestamps
      t.string :name
      t.text :address
      t.bigint :contact
    end
  end
end
