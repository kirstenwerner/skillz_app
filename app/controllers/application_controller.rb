class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def home
    @daily_workout = Workout.today
    @path = workout_path(@daily_workout)
    if @daily_workout == []
      @path = root_path
    end
  end

  def after_sign_in_path_for(resource)
    request.env['omniauth.origin'] || root_path
  end
end
