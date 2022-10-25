class Product < ApplicationRecord
    validates :name,:price, presence: true
    has_one :cart_items
end
