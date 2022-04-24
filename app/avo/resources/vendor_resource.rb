class VendorResource < Avo::BaseResource
  self.title = :name
  self.includes = []
  self.record_selector = false
  self.after_create_path = :index
  self.after_update_path = :index

  field :name, as: :text, link_to_resource: true, required: true
  field :address, as: :trix, required: true
  field :contact, as: :number, required: true
  field :balance, as: :number, format_using: -> (value) { value > 0 ? "🌲#{value}" : "🔻#{value}" } do |model, resource, view|
    sales = model.sales.sum(:amount)
    payments = model.payments.sum(:amount)
    sales - payments
  end

  field :sales, as: :has_many
  field :payments, as: :has_many
  field :costs, as: :has_many
end
