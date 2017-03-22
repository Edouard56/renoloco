class CustomersController < ApplicationController
  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)

    if params[:styles].present?
      @customer.customer_startup_style    = params[:styles].include?("startup")
      @customer.customer_classical_style  = params[:styles].include?("classical")
      @customer.customer_modern_style     = params[:styles].include?("modern")
    end

      raise
    if @customer.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def customer_params
    params.require(:customer).permit(:customer_company_name, :first_name, :last_name, :position_in_company, :mobile_phone_number, :office_phone_number, :email, :customer_address, :works_address, :needs_surface, :nb_of_employees, :budget, :starts_at, :ends_at, :customer_startup_style, :customer_classical_style, :customer_modern_style, :description, photos: [])
  end
end
