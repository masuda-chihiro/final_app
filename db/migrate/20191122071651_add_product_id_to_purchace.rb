class AddProductIdToPurchace < ActiveRecord::Migration[5.1]
  def change
    add_reference :purchases, :product, foreign_key: true
  end
end
