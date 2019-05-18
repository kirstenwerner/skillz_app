class WorkoutsController < ApplicationController

  def new
    @workout = Workout.new
    @targets = Skill.all.map(&:target).uniq.compact
  end

  def create
    @workout = Workout.new

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
  end

  private
    def workout_params
      params.require(:workout).permit!
    end
end
