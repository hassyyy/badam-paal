class SaleResource < Avo::BaseResource
  self.title = :name
  self.includes = []
  self.record_selector = false
  self.after_create_path = :index
  self.after_update_path = :index


  field :date, as: :date, required: true, format: '%B %d, %Y', default: Date.today
  field :product, as: :belongs_to
  field :vendor, as: :belongs_to
  field :quantity, as: :number, required: true
  field :amount, as: :number, hide_on: [:new, :edit]

  filter ProductFilter
  filter VendorFilter
end