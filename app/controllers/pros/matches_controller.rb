class Pros::MatchesController < Pros::BaseController
  def accepted
    @matches = current_pro.matches.where(status: "accepted").order(created_at: :desc)
  end

  def accept
    match = current_pro.matches.where(status: ["pending", "refused"]).find(params[:id])
    accepted_count = match.customer.matches.where(status: "accepted").count

    if accepted_count == Match::MAX_ACCEPTED_COUNT - 1
      match.update(status: "accepted")
      match.customer.matches.where(status: ["pending", "refused"]).each do |m|
        m.update(status: "lost")
      end
      redirect_to pros_dashboard_path
    else
      accepted_count < Match::MAX_ACCEPTED_COUNT
      match.update(status: "accepted")
      redirect_to accepted_pros_matches_path
    end
  end

  def refuse
    match = current_pro.matches.where(status: "pending").find(params[:id])
    match.update(status: "refused")

    redirect_to pros_dashboard_path
  end
end
