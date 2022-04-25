class Sale < ApplicationRecord
  belongs_to :product
  belongs_to :vendor
  default_scope { order(created_at: :desc) }

  validates :product_id, presence: true
  validates :vendor_id, presence: true
  validates :date, presence: true
  validates :quantity, presence: true
  validates :amount, presence: true
end
