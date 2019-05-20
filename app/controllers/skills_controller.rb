class SkillsController < ApplicationController
  before_action :authenticate_user!

  def index
    @target = params[:target]
    @skills = Skill.for_target(@target)
  end

  def show
    if @skill = Skill.find_by(name: params[:id])
    else @skill = Skill.find(params[:id])
    end
    @video = "https://player.vimeo.com/video/" + @skill.demo.split("/").last
  end

  def targets
    @skills = Skill.all

    @skills_targets = @skills.map do |skill|
      skill.target
    end
  end
end
