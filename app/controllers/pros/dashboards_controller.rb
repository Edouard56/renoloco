class Pros::DashboardsController < Pros::BaseController
  def show
    @pending_matches = current_pro.matches.where(status: "pending")
    @not_accepted_matches = current_pro.matches.where(status: ["lost", "refused"])
  end
end
