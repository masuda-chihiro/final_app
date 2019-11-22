class Product < ApplicationRecord
  belongs_to :purchase
  belongs_to :company
end
