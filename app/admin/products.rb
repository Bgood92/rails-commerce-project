ActiveAdmin.register Product do
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

  permit_params :name, :price, :stock_quantity, :description, product_genres_attributes: [:id, :product_id, :genre_id, :_destroy]

  index do
    selectable_column
    column :id
    column :name
    column :price
    column :stock_quantity
    column :description
    column :categories do |product|
      product.genres.map { |g| g.name }.join(", ").html_safe
    end
    actions
  end

  show do |product|
    attributes_table do
      row :name
      row :price
      row :stock_quantity
      row :description
      row :genres do |product|
        product.genres.map { |g| g.name }.join(", ").html_safe
      end
    end
  end

  form do |f|
    f.semantic_errors *f.object.errors.keys

    f.inputs "Product" do
      f.input :name
      f.input :price
      f.input :stock_quantity
      f.input :description
      f.has_many :product_genres, allow_destroy: true do |n_f|
        n_f.input :genre
      end
    end

    f.actions
  end
end
