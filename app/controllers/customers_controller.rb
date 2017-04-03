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

  def show
    # def de la page de confirmation qui présente les matches potentiels ( status : matching) au customer
    @customer = Customer.find(params[:customer_id])
    @matching_matches = @customer.matches.where(status: "matching")
  end

  def select_matches
    # celui-ci selectionne les entreprises qu'il souhaite conserver (ceux qui sont sélectionner par les matches passent en "waiting")
    @customer = Customer.find(params[:customer_id])
    @matching_matches = @customer.matches.where(status: "matching")

    @matching_matches.each do |m|
        # if match.pro_id# if params[:status].present?
        m.update(status: "waiting")
      # else
      #   m.update(status: "not_selectionned")
      # end
    end

    redirect_to root_path
  end


  private

  def customer_params
    params.require(:customer).permit(:customer_company_name, :first_name, :last_name, :position_in_company, :mobile_phone_number, :office_phone_number, :email, :customer_address, :works_address, :needs_surface, :nb_of_employees, :budget, :starts_at, :ends_at, :customer_startup_style, :customer_classical_style, :customer_modern_style, :description, photos: [])
  end
end
