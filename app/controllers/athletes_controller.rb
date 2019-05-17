class AthletesController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @athlete = User.find(params[:id])
  end

  private

  def athlete_params
    params.require(:user).permit(:id, :first_name, :last_name, :email)
  end
end
