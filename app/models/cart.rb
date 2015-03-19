class Cart < ActiveRecord::Base
  has_many :line_items, dependent: :destroy

  def add_item(p)
    line_items = LineItem.where(product_id: p.id).first
    unless line_items
      line_items = self.line_items.build(product: p, quantity: 0, price: p.price )
    end
    line_items.quantity += 1
    line_items.save
  end
end
