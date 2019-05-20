class AthletesController < ApplicationController
  before_action :authenticate_user!
  before_action :current_user, only: [:show]

  def index
    @athletes = User.all
  end

  def show
    @athlete = User.find(params[:id])
    @workouts = @athlete.workouts 
  end

  private

  def athlete_params
    params.require(:user).permit(:id, :first_name, :last_name, :email, :coach)
  end
end
