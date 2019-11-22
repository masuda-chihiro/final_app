class CreatePurchases < ActiveRecord::Migration[5.1]
  def change
    create_table :purchases do |t|
      t.integer :quantity
      t.boolean :whether
      t.references :user, foreign_key: true
      t.references :send, foreign_key: true

      t.timestamps
    end
  end
end
