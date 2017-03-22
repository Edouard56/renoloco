class ProsController < ApplicationController

  def show
  end

  # def new
  #   @pro = Pro.new
  # end

  # def create
  #   @pro = Pro.new(pro_params)
  #    if @pro.save
  #      redirect_to pro_path(@pro)
  #    else
  #      render :new
  #    end
  #end

  #private

  # def set_pro
  #   @pro = Pro.find(params[:id])
  # end

  # def pro_params
  #   params.require(:pro).permit(
  #     :pro_company_name,
  #     :address,
  #     :contact_first_name,
  #     :contact_last_name,
  #     :contact_position,
  #     :contact_phone_number)
  # end

end
