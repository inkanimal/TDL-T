class ProductsController < InheritedResources::Base

  def index
    @products = Product.all
    @order_item = current_order.order_items.new
  end

  def show
    @product = Product.find(params[:id])
    @order_item = current_order.order_items.new
  end

  private

    def product_params
      params.require(:product).permit(:brand, :name, :description, :price, :image_file_name)
    end
end
