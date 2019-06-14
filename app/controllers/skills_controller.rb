class SkillsController < ApplicationController
  before_action :authenticate_user!

  def index
    @target = params[:target]
    @skills = Skill.for_target(@target)
    respond_to do |f|
      f.html {render :index}
      f.json {render json: @skills}
    end
  end

  def show
    if @skill = Skill.find_by(name: params[:id])
    else @skill = Skill.find(params[:id])
    end
    if @skill.demo != ""
      @video = "https://player.vimeo.com/video/" + @skill.demo.split("/").last
    end
    respond_to do |f|
      f.html {render :show}
      f.json {render json: @skill}
    end 
  end

  def targets
    @skills = Skill.all

    @skills_targets = @skills.map do |skill|
      skill.target
    end
    respond_to do |f|
      f.html {render :targets}
      f.json {render json: @skills}
    end
  end
end
