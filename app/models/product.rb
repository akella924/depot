class Product < ActiveRecord::Base
  validates :name, presence: true, length: {maximum: 200 }
  validates :price, presence: true, numericality: {greater_than: 0}
  validates :weight, numericality: {only_integer: true, greater_than_or_equal_to: 0}, allow_blank: true

end
