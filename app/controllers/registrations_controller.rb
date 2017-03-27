class RegistrationsController < Devise::RegistrationsController
  protected

  # Edouard : Comme devise marche avec User de base, la redirection vers la show doit se faire manuellement (cf google : custom path after sign up)
  def after_sign_up_path_for(resource)
    pros_profile_path # Or :prefix_to_your_route
  end

  # attachinary installé ici a la pla ce du pros controller

end


# pros_dashboard_path
