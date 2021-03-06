class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_pro!, only: :home

  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [
        :pro_company_name,
        :address,
        :contact_first_name,
        :contact_last_name,
        :contact_position,
        :contact_phone_number,
        :operating_radius,
        :min_operating_surface,
        :max_operating_surface,
        { photos: []}
      ])

    # For additional in app/views/devise/registrations/edit.html.erb
    #devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end

  def default_url_options
    { host: ENV["HOST"] || "localhost:3000" }
  end

end
