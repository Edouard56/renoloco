class Pros::MatchesController < Pros::BaseController
  def accepted
    @matches = current_pro.matches.where(status: "accepted").order(created_at: :desc)
  end

  def accept
    match = current_pro.matches.where(status: "pending").find(params[:id])
    accepted_count = match.customer.matches.where(status: "accepted").count

    if accepted_count < Match::MAX_ACCEPTED_COUNT
      match.update(status: "accepted")
      redirect_to accepted_pros_matches_path
    else
      match.update(status: "lost")
      flash[:alert] = "Vous arrivez trop tard"
      redirect_to pros_dashboard_path
    end
  end

  def refuse
    match = current_pro.matches.where(status: "pending").find(params[:id])
    match.update(status: "refused")

    redirect_to pros_dashboard_path
  end
end
