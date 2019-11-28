class Product < ApplicationRecord
  has_many :purchases
  belongs_to :company
  
end
