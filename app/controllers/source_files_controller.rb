class SourceFilesController < ApplicationController
  def new
  end

  def create
  end

  def index
  	@project = Project.find(params[:project_id])
  	@project.create_source_files_tree if @project.source_files.count == 0
  	@root = @project.source_files[0].root
  end 

end
