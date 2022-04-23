class Cost < ApplicationRecord
  belongs_to :product
  belongs_to :vendor
  default_scope { order(created_at: :desc) }
end
