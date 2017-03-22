class PagesController < ApplicationController
  skip_before_action :authenticate_pro!, only: :home

  def home
  end
end
