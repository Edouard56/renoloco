ActiveAdmin.register Match do
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
    column :customer do |match|
      link_to match.customer.customer_company_name, admin_customer_path(match.customer)
    end
    column :pro do |match|
      link_to match.pro.pro_company_name, admin_pro_path(match.pro)
    end
    column :status
    actions
  end

  # batch_action :mark_as_pending do |ids|
  #   batch_action_collection.find(ids).each do |m|
  #     m.update(status: 'pending')
  #   end
  #   redirect_to collection_path, alert: "The matches are now pending."
  # end

end


