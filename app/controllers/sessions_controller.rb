class SessionsController < Devise::SessionsController
  protected

# gère la redirection après le sign in à la place du Devise Session Controller
  def after_sign_in_path_for(resource)
    pros_dashboard_path(resource) # Or :prefix_to_your_route
  end


end


# pros_dashboard_path
