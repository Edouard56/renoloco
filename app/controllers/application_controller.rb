class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_pro!, only: :home

  include Pundit

  # Pundit: white-list approach.
  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  # Uncomment when you *really understand* Pundit!
  # rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  # def user_not_authorized
  #   flash[:alert] = "You are not authorized to perform this action."
  #   redirect_to(root_path)
  # end

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end

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

end
