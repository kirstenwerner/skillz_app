class WorkoutsController < ApplicationController

  def index
    @workouts = Workout.all
  end

  def new
    @workout = Workout.new
    18.times{@workout.skills.build}
    @skills = Skill.all + [Skill.new(name: "none")]
    @targets = @skills.map{|skill| skill.target}.uniq - [nil]
  end

  def create
    @workout = Workout.new
    @workout.coach_id =
    @skills = []
    params[:workout].values.each do |skill_hash|
      skill_hash.each do |skill, id|
        @skills << Skill.find(id)
      end
    end
    @workout.skills << @skills
    if @workout.save
      binding.pry
      redirect_to workout_path(@workout)
    else
      render :new
    end
  end

  def show
    @workout = Workout.find(params[:id])
    @skills = @workout.skills
    @targets = @skills.map{|skill| skill.target}.uniq
  end

  private

  def workout_params
    params.require(:workout).permit(:id, :coach_id, skill_attributes:[:name, :description, :target])
  end
end
