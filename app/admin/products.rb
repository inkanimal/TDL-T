ActiveAdmin.register Product do
  menu :priority => 2
  permit_params :brand, :name, :description, :price,:featured, :image_file_name, :category_ids => []

  scope :all, :default => true

  scope :active_products do |products|
    products.where(:active => true)
  end

  form html: { multipart: true } do |f|

    f.inputs "Product | New" do
      f.input :brand
      f.input :name
      f.input :categories, as: :select, :collection => Category.all.collect {|category| [category.name, category.id] }
      f.input :price, :sortable => :price do |p|
        number_to_currency p.price
      end
      f.input :image_file_name
      f.input :description
      f.input :active

    end
  f.actions
end

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
