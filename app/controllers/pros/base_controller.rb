class Pros::BaseController < ApplicationController
  before_action :authenticate_pro!
end
