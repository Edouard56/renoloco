class PagesController < ApplicationController
  skip_before_action :authenticate_pro!, only: :home

  def home
  end

  def choisir_son_renovateur
  end

  def choix_renoloco
  end

  def presentation
  end

  def la_reglementation
  end

end
