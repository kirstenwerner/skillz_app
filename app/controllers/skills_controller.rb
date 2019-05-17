class SkillsController < ApplicationController

  def index
    @target = params[:target]
    @skills = Skill.for_target(@target)
  end

  def show
    @skill = Skill.find_by(name: params[:id])
  end

  def targets
    @skills = Skill.all

    @skills_targets = @skills.map do |skill|
      skill.target
    end
  end
end
