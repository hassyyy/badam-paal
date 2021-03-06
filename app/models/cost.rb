class Cost < ApplicationRecord
  belongs_to :product
  belongs_to :vendor
  default_scope { order(created_at: :desc) }

  validates :product_id, presence: true
  validates :vendor_id, presence: true
  validates :amount, presence: true
  validates_uniqueness_of :vendor_id, scope: :product_id, message: 'already has a cost for the selected Product'
end
