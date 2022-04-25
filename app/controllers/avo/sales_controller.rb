class Avo::SalesController < Avo::ResourcesController
  def create
    @sale = Sale.new(sale_params)
    assign_amount
    @sale.save

    redirect_to "/avo/resources/sales"
  end

  def update
    @sale = Sale.find(params[:id])
    @sale.assign_attributes(sale_params)
    assign_amount
    @sale.save

    redirect_to "/avo/resources/sales"
  end

  private

  def sale_params
    params.require(:sale).permit(:date, :product_id, :vendor_id, :quantity)
  end

  def assign_amount
    return if @sale.quantity.nil? || @sale.product_id.nil? || @sale.vendor_id.nil?
    cost = Cost.where(product_id: @sale.product_id, vendor_id: @sale.vendor_id).first
    return if cost.nil?
    @sale.amount = @sale.quantity * cost.amount
  end

end
