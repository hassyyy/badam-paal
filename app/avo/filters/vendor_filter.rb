class VendorFilter < Avo::Filters::SelectFilter
  self.name = 'Vendor'

  def apply(request, query, value)
    query.where(vendor_id: value)
  end

  def options
    Vendor.select(:id, :name).each_with_object({}) { |vendor, options| options[vendor.id] = vendor.name }
  end
end
