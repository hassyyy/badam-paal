class Payment < ApplicationRecord
  belongs_to :vendor
  default_scope { order(created_at: :desc) }
end
