class LineItem < ActiveRecord::Base
  belongs_to :cart
  belongs_to :product
  validates :product, presence: true
  validates :product_id, uniqueness: {scope: :cart_id}
  validates :cart, presence: true
  validates :quantity, presence: true, numericality: {only_integer: true, qreather_then: 0}
  validates :price, presence: true
end
