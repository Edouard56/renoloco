class Pros::ProfilesController < Pros::BaseController

  before_action :set_pro, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def update
    @pro.update(pro_params)
    # Cloudinary::Uploader.upload(params[:photos], :public_id => '#{@pro.pro_company_name}')

    redirect_to pros_profile_path
  end

  private

  def set_pro
    @pro = current_pro
  end

  def pro_params
    params.require(:pro).permit(:email, :pro_company_name, :address,
      :contact_first_name, :contact_last_name, :contact_phone_number,
      :operating_radius, :min_operating_surface, :max_operating_surface,
      :photo_company_logo, photos_sup: [], photos_old: [], photos_new: [])
  end

end
