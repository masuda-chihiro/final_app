class Purchase < ApplicationRecord
  belongs_to :user
  #belongs_to :send
  belongs_to :product

end
