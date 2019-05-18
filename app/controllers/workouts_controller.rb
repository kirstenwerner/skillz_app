class WorkoutsController < ApplicationController

  def new
    @workout = Workout.new

  end

  def create
    @workout = Workout.new
    binding.pry
    redirect_to workouts_path(@workout)
    @skills = params[:workout][:skills]
    @workout.skills << @skills
    @workout.save
    redirect
  end

  def show
  end
end
