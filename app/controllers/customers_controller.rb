class CustomersController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:select_matches]

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

    if @customer.save
      redirect_to customer_confirmation_path(@customer)
    else
      render :new
    end
  end

  # def de la page de confirmation qui présente les matches potentiels au customer
  #celui selectionne les entreprises qu'il souhaite conserver (eux gardent les matches)

  def show
    @customer = Customer.find(params[:customer_id])
    @matching_matches = @customer.matches.where(status: "matching")
  end

  def select_matches
    @customer = Customer.find(params[:customer_id])
    @matching_matches = @customer.matches.where(status: "matching")
    raise
    @matching_matches.each do |m|
      if params[:status] exists ?
        match.each do |m|
          m.update(status: "waiting")
      else

        end

      redirect_to root_path
      else
        render :show
      end
    end
  end


  private

  def customer_params
    params.require(:customer).permit(:customer_company_name, :first_name, :last_name, :position_in_company, :mobile_phone_number, :office_phone_number, :email, :customer_address, :works_address, :needs_surface, :nb_of_employees, :budget, :starts_at, :ends_at, :customer_startup_style, :customer_classical_style, :customer_modern_style, :description, photos: [])
  end
end
