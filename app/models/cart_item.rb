class CartItem < ApplicationRecord
    belongs_to :cart
    belongs_to :product
    validates :qty, presence: true
end
