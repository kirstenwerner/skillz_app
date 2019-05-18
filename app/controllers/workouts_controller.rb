class WorkoutsController < ApplicationController

  def new
    @workout = Workout.new
    18.times{@workout.skills.build}
    @skills = Skill.all + [Skill.new(name: "none")]
    @targets = @skills.map{|skill| skill.target}.uniq - [nil]
  end

  def create
    @workout = Workout.new
    binding.pry
    redirect_to workouts_path(@workout)
  end

  def show
  end
end
