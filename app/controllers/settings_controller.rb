class SettingsController < ApplicationController
  def index
    @project = Project.find(params[:project_id])
    @settings = @project.settings
  end

  def create
  end

  def new
  end

  def edit
  end

  def show
  end

  def destroy
  end
end
