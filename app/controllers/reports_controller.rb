class ReportsController < ApplicationController
  def index
  	@project = Project.find(params[:project_id])
  	@reports = @project.reports
  end
end
