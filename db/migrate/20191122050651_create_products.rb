class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :explanation
      t.integer :price
      t.integer :stock
      t.references :purchase, foreign_key: true
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
