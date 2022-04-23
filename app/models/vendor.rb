class Vendor < ApplicationRecord
  has_many :costs
  has_many :sales
  has_many :payments
  default_scope { order(created_at: :asc) }
end
