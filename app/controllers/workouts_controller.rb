class WorkoutsController < ApplicationController
  before_action :authenticate_user!
  before_action :coach?, except: [:index, :show, :complete]

  def index
    if params[:athlete_id]
      @workouts = User.find(params[:athlete_id]).workouts
      if @workouts == []
        flash[:alert] = "This athlete has not logged any workouts yet"
      end
    else
      @workouts = Workout.all
    end
    respond_to do |f|
      f.html {render :index}
      f.json {render json: @workouts}
    end
  end

  def new
    # if !Workout.today.empty?
    #   redirect_to root_path, alert: "A workout has already been created for today!"
    # else
      @workout = Workout.new
      18.times{@workout.skills.build}
      @skills = Skill.all
      @targets = @skills.map{|skill| skill.target}.uniq
    # end
  end

  def create
    @workout = Workout.new
    @workout.coach_id = current_user.id
    Workout.create_or_update_skills(@workout, params[:workout])
    if @workout.save
      Workout.create_or_update_work(@workout)
      render json: @workout, status: 201
    else
      redirect_to new_coach_workout_path(@workout.coach_id)
    end
  end

  def show
    @workout = Workout.find(params[:id])
    if @workout.id
      @skills = @workout.skills
      @work = []

      @workout.workout_skills.each do |ws|
        @work << ws.work
      end

      @targets = @skills.map{|skill| skill.target}.uniq
    else
      flash[:alert] = "Today's workout has not yet been set!"
      redirect_to root_path
    end
    respond_to do |f|
      f.html {render :show}
      f.json {render json: @workout, status: 200}
    end
  end

  def edit
    @workout = Workout.find(params[:id])
    @skills = Skill.all + [Skill.new(name: "none")]
    @targets = @skills.map{|skill| skill.target}.uniq - [nil]
  end

  def update
    @workout = Workout.find(params[:id])
    @workout.skills = []
    @workout.workout_skills = []
    Workout.create_or_update_skills(@workout, params[:workout])
    if @workout.save
      Workout.create_or_update_work(@workout)
      redirect_to workout_path(@workout)
    else
      flash[:alert] = "The workout was unable to be updated"
      redirect_to workout_path(@workout)
    end
  end

  def complete
    @workout = Workout.find(params[:id])
    if params[:users][:users].to_i == 1
      @workout.users << current_user unless current_user.workouts.include?(@workout)
      flash[:alert] = "You've successfully added #{@workout.date}'s workout to your completed workout log!"
    else
      if @workout.users.include?(current_user)
        @workout.users.delete(current_user)
        flash[:alert] = "You've removed the workout from #{@workout.date} from your workout log"
      end
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
    params.require(:workout).permit(:id, :coach_id, skill_attributes:[:name, :description, :target], workout_skill_attributes:[:work])
  end
end
