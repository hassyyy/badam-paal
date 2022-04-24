class ProductFilter < Avo::Filters::SelectFilter
  self.name = 'Product'

  def apply(request, query, value)
    query.where(product_id: value)
  end

  def options
    Product.select(:id, :name).each_with_object({}) { |product, options| options[product.id] = product.name }
  end
end
