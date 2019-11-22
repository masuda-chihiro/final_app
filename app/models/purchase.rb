class Purchase < ApplicationRecord
  belongs_to :user
  belongs_to :send
  has_many :products
end
