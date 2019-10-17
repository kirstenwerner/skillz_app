class AthletesController < ApplicationController
  before_action :authenticate_user!
  before_action :current_user

  def index
    if current_user.coach?
      @athletes = User.all
      respond_to do |f|
        f.html {render :index}
        f.json {render json: @athletes}
      end
    else
      flash[:error] = "Only coaches have access to athlete data"
      redirect_to root_path
    end
  end

  def show
    @athlete = User.find(params[:id])
    if @athlete == current_user
      @workouts = @athlete.workouts
    elsif current_user.coach?
      @workouts = @athlete.workouts
    else
      redirect_to root_path, alert: "You may only view your own workout records"
    end
    respond_to do |f|
      f.html {render :show}
      f.json {render json: @workouts}
    end
  end

  def destroy
    @athlete = User.find(params[:id])
    @athlete.destroy
    redirect_to athletes_path, alert: "You have successfully un-registered #{@athlete.first_name} #{@athlete.last_name}"
  end

  private

  def athlete_params
    params.require(:user).permit(:id, :first_name, :last_name, :email, :coach)
  end
end
