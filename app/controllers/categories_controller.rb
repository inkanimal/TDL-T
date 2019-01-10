class CategoriesController < InheritedResources::Base

  def show
    @category = Category.find(params[:id])
  end

  private

    def category_params
      params.require(:category).permit(:name)
    end
end
