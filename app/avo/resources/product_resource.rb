class ProductResource < Avo::BaseResource
  self.title = :name
  self.includes = []
  self.record_selector = false
  self.after_create_path = :index
  self.after_update_path = :index

  field :name, as: :text, link_to_resource: true, required: true
  field :amount, as: :number, required: true, format_using: -> (value) { "₹#{value}" }

  field :costs, as: :has_many
  field :sales, as: :has_many
end
