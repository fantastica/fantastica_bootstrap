ActiveAdmin.register Website do
  actions :all, :except => [:new, :create, :destroy]
  config.filters = false
  
  index do
    selectable_column
    id_column
    column :address
    column :phone_number
    column :email
    column :created_at
    column :updated_at
    actions
  end
end
