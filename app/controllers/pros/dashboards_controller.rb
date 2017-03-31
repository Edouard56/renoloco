class Pros::DashboardsController < Pros::BaseController
  def show
    @pending_matches = current_pro.matches.where(status: "pending").order(created_at: :desc)
    @not_accepted_matches = current_pro.matches.where(status: ["lost", "refused"]).order(created_at: :desc)
  end

end
