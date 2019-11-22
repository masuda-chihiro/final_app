class CreateSends < ActiveRecord::Migration[5.1]
  def change
    create_table :sends do |t|
      t.string :name
      t.string :email
      t.integer :postal_code
      t.string :address
      t.integer :card_number

      t.timestamps
    end
  end
end
