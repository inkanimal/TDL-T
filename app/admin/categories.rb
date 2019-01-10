ActiveAdmin.register Category do
  menu :priority => 2
  permit_params :name

  form html: { multipart: true } do |f|

  f.inputs "Category | New" do
    f.input :name, :sortable => :name do |c|
       c.name
     end
   end
     f.actions
   end

end
