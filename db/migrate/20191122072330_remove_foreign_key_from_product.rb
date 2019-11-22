class RemoveForeignKeyFromProduct < ActiveRecord::Migration[5.1]
  def change
    remove_reference :products, :purchase, foreign_key: true
  end
end
