class Avo::SalesController < Avo::ResourcesController
  def create
    assign_amount
    super
  end

  def update
    assign_amount
    super
  end

  private

  def assign_amount
    return if @model.quantity.nil? || @model.product_id.nil? || @model.vendor_id.nil?
    cost = Cost.where(product_id: @model.product_id, vendor_id: @model.vendor_id).first
    if cost.nil?
      product = Product.where(id: @model.product_id).first
      return if product.nil?
      price = product.amount
    else
      price = cost.amount
    end
    @model.amount = @model.quantity * price
  end

end
