class Vendor < ApplicationRecord
  has_many :costs
  has_many :sales
  has_many :payments
  default_scope { order(created_at: :asc) }

  validates :name, presence: true
  validates :address, presence: true
  validates :contact, presence: true
end
