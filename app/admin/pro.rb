ActiveAdmin.register Pro do
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

  form do |f|
    f.inputs "Informations" do
      f.input :pro_company_name
      f.input :contact_first_name
      f.input :contact_last_name
      f.input :contact_position
      f.input :email
      f.input :contact_phone_number
      f.input :address
      f.input :operating_radius
      f.input :min_operating_surface
      f.input :max_operating_surface
    end
    f.actions
  end

index do
  selectable_column
  column :pro_company_name
  column :contact_first_name
  column :contact_last_name
  column :contact_position
  column :email
  column :contact_phone_number
  column :address
  column :operating_radius
  column :min_operating_surface
  column :max_operating_surface
  actions
end

permit_params :email, :pro_company_name, :address, :contact_first_name, :contact_last_name, :contact_phone_number, :operating_radius, :min_operating_surface, :max_operating_surface

end
