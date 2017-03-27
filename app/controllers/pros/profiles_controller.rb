class Pros::ProfilesController < Pros::BaseController
  def show
  end

  def edit
    @pro = current_pro
  end

  def update
    @pro = current_pro
    # TODO
  end

  #dssd
end
