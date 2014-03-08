class SourceFilesController < ApplicationController
	layout "reports"
  def new
  end

  def create
  end

  def index
  	@project = Project.find(params[:project_id])
  end
end
