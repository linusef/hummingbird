class ReportsController < ApplicationController
  def index
  	@project = Project.find(params[:project_id])
  	@reports = @project.reports
  end

  def show
  	@project = Project.find(params[:project_id])
  	@report = Report.find(params[:id]) 
  end

  def new
  	@project = Project.find(params[:project_id])
  	@report = @project.reports.build
  end

  def create
  	@report = Report.new(report_params)
  	if @report.save
  		redirect_to project_reports_path(@report.project)
  	else
  		render nothing: true
  	end
  end

  def destroy
    @report = Report.find(params[:id])
    @report.destroy
    redirect_to project_reports_path(project_id: @report.project.id)
  end

  def delete_selected_reports
    report_ids = params[:report_ids]
    @project = Report.find(report_ids.first).project
    report_ids.each do |id|
      r = Report.find(id)
      r.destroy
    end
    respond_to do |format|
        format.js   {}
    end
    #redirect_to project_reports_path(project_id: @project)
  end

  def write_report
  	#@report = Report.find 17
  	write_data(@report.content)
  end

  private
  	def report_params
      params.require(:report).permit(:title, :content, :project_id)
    end

    def write_data(str)   
      File.open( Rails.root + "tmp/report_content.rb", 'w+' ) do |out|
        out.write str
      end
      render nothing: true
  	end
end
