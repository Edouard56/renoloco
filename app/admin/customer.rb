ActiveAdmin.register Customer do
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
  index do
  selectable_column
  column :created_at
  column :customer_company_name
  column :first_name
  column :last_name
  column :position_in_company
  column :email
  column :mobile_phone_number
  column :office_phone_number
  column :customer_address
  column :works_address
  column :needs_surface
  column :nb_of_employees
  column :budget
  column :starts_at
  column :ends_at
  column :customer_startup_style
  column :customer_modern_style
  column :customer_classical_style
  column :description
  column :operating_radius
  column :min_operating_surface
  column :max_operating_surface
  actions
  end

  # Accepter (pending) tous les matches du customer
  action_item :view, only: :show do
    if customer.matches.all? { |match| match.status == "waiting" }
      link_to 'Accepter Matches', accept_matches_admin_customer_path(customer), method: :patch
    end
  end

  member_action :accept_matches, method: :patch do
    resource.matches.where(status: "waiting").update(status: "pending")
    redirect_to resource_path, notice: "Matches acceptés!"
  end

  # Refuser (disqualified) tous les matches du customer
  action_item :view, only: :show do
    if customer.matches.all? { |match| match.status == "waiting" }
      link_to 'Refuser Matches',  refuse_matches_admin_customer_path(customer), method: :patch
    end
  end

  member_action :refuse_matches, method: :patch do
    resource.matches.where(status: "waiting").update(status: "disqualified")
    redirect_to resource_path, notice: "Matches disqualifiés!"
  end

  permit_params :customer_company_name,
    :first_name,
    :last_name,
    :position_in_company,
    :mobile_phone_number,
    :office_phone_number,
    :email,
    :customer_address,
    :works_address,
    :needs_surface,
    :nb_of_employees,
    :budget,
    :starts_at,
    :ends_at,
    :customer_startup_style,
    :customer_classical_style,
    :customer_modern_style,
    :description, photos: []

end
