class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|

      t.timestamps
      t.string :name
    end
  end
end
