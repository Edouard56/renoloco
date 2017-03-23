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

    if @customer.save
      compute_matches
      redirect_to root_path
    else
      render :new
    end


  end

  private

  def compute_matches
    pros = Pro.near(@customer.works_address, 200)
    #@pros = Pro.where(@pro.operating_radius < @pro.distance_to(@customer.works_address)

    # TODO: take into account the radius

    #@pros = @pros.where(@pro.min_operating_surface < @customer.needs_surface < @pro.max_operating_surface )
    pros = pros.where(
      "min_operating_surface < :needs_surface AND :needs_surface < max_operating_surface",
      needs_surface: @customer.needs_surface
    )

    pros = pros.limit(3)

    pros.each do |pro|
      Match.create(pro: pro , customer: @customer, status: 'pending')
    end
  end

  def customer_params
    params.require(:customer).permit(:customer_company_name, :first_name, :last_name, :position_in_company, :mobile_phone_number, :office_phone_number, :email, :customer_address, :works_address, :needs_surface, :nb_of_employees, :budget, :starts_at, :ends_at, :customer_startup_style, :customer_classical_style, :customer_modern_style, :description, photos: [])
  end
end
