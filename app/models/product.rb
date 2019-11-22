class Product < ApplicationRecord
  has_many :purchase
  belongs_to :company
end
