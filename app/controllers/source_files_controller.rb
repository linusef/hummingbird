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

  def refresh_source_files
    @project = Project.find(params[:project_id])
    @project.source_files.delete_all
    @project.create_source_files_tree
    @root = @project.source_files[0].root
    redirect_to project_source_files_path(@project)
  end

  def show
  	@file_node = SourceFile.find(params[:id])
  	@project = @file_node.project
  	@root = @file_node
  end
end
