ActiveAdmin.register Dish do

permit_params :title, :description, :price, :image, :restaurant_id


form do |f|
  f.inputs do  
    f.input :title
    f.input :description
    f.input :price
    f.input :restaurant_id,  :as => :select,      :collection => Restaurant.all
    f.input :image, :as => :file, :hint => image_tag(f.object.image.url(:thumb))
  end
  f.actions
 end

index do
  selectable_column
  id_column
  column :image do |dish|
    image_tag dish.image.url(:thumb)
  end
  column :title do |dish|
    link_to dish.title, admin_dish_path(dish)
  end
  column :price 
  column :restaurant_id do |dish|
    dish.restaurant.title
  end
  actions
end

show do
 attributes_table do
   row :image do |dish|
     image_tag dish.image.url(:medium)
   end
   row :title   
   row :price
   row :description
   row :restaurant_id do |dish|
     dish.restaurant.title
   end
 end
 active_admin_comments
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
