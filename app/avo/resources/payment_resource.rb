class PaymentResource < Avo::BaseResource
  self.title = :name
  self.includes = []
  self.record_selector = false
  self.after_create_path = :index
  self.after_update_path = :index

  field :date, as: :date, required: true, picker_format: 'd F, Y', disable_mobile: true, format: '%d %B, %Y', default: Date.today
  field :vendor, as: :belongs_to, required: true
  field :amount, as: :number, required: true, format_using: -> (value) { "₹#{value}" }

  filter VendorFilter
end
