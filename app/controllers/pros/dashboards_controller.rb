class Pros::DashboardsController < Pros::BaseController
  def show
    @matches = current_pro.matches
  end
end
