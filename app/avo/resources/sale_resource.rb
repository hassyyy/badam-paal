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
  field :amount, as: :number do |model, resource, view|
    model.quantity * (Cost.where(product_id: model.product_id, vendor_id: model.vendor_id).first&.amount).to_i
  end

  filter ProductFilter
  filter VendorFilter
end
