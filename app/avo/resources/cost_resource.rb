class CostResource < Avo::BaseResource
  self.title = :name
  self.includes = []
  self.record_selector = false
  self.after_create_path = :index
  self.after_update_path = :index

  field :product, as: :belongs_to, required: true
  field :vendor, as: :belongs_to, required: true
  field :amount, as: :number, required: true

  filter ProductFilter
  filter VendorFilter
end
