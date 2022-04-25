class Product < ApplicationRecord
  default_scope { order(created_at: :asc) }

  has_many :costs
  has_many :sales

  validates :name, presence: true
end
