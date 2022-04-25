class Payment < ApplicationRecord
  belongs_to :vendor
  default_scope { order(created_at: :desc) }

  validates :vendor_id, presence: true
  validates :date, presence: true
  validates :amount, presence: true
end
