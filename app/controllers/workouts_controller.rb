class WorkoutsController < ApplicationController
  before_action :authenticate_user!
  before_action :coach?, except: [:index, :show, :complete]

  def index
    @workouts = Workout.all
  end

  def new
    # if Workout.today
    #   redirect_to root_path, alert: "A workout has already been created for today!"
    # else
      @workout = Workout.new
      18.times{@workout.skills.build}
      @skills = Skill.all + [Skill.new(name: "none")]
      @targets = @skills.map{|skill| skill.target}.uniq - [nil]
    # end
  end

  def create
    @workout = Workout.new
    @workout.coach_id = current_user.id
    skills = []
    skill_work = []
    params[:workout].values.each do |skill_hash|
      skill_hash.each do |key, value|
        if !key.include? "work"
          skills << Skill.find(value) unless value.to_i == 0
        else
          skill_work << value unless value == ""
        end
      end
    end
    @workout.skills << skills
    if @workout.save
      @workout.skills.each_with_index do |skill, i|
        @workout.workout_skills[i].work = skill_work[i]
      end
      @workout.save
      redirect_to workout_path(@workout)
    else
      render :new
    end
  end

  def show
    # if params[:athlete_id]
    #   @workout = Workout.find(params[:athlete_id])
    # else
    if  @workout = Workout.find(params[:id])
    # end
    # if !@workout == nil
      @skills = @workout.skills
      @work = []

      @workout.workout_skills.each do |ws|
        @work << ws.work
      end
      @targets = @skills.map{|skill| skill.target}.uniq
    else
      redirect_to root_path, alert: "No workout has been posted yet for today."
    end
  end

  def edit
    @workout = Workout.find(params[:id])
    @skills = Skill.all + [Skill.new(name: "none")]
    @targets = @skills.map{|skill| skill.target}.uniq - [nil]
  end

  def update
  end

  def complete
    @workout = Workout.find(params[:id])
    if params[:users][:users].to_i == 1
      @workout.users << current_user unless current_user.workouts.include?(@workout)
    else
      @workout.users - [current_user]
    end
    @workout.save
    redirect_to athlete_path(current_user)
  end

  def destroy
    @workout = Workout.find(params[:id])
    @workout.destroy
    redirect_to root_path, alert: "You have succesfully deleted the workout from #{@workout.date}"
  end

  def coach?
    unless current_user.coach
      redirect_to root_path, alert: "You must be a coach to create or edit workouts!"
    end
  end

  private

  def workout_params
    params.require(:workout).permit(:id, :coach_id, skill_attributes:[:name, :description, :target])
  end
end
