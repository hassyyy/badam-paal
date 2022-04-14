class CreateCreditCards < ActiveRecord::Migration[7.0]
  def change
    create_table :credit_cards do |t|

      t.timestamps
      t.string :name
      t.bigint :billing_day
    end
  end
end
