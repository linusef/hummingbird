class ProjectsController < ApplicationController
	http_basic_authenticate_with :name => "quickqa", :password => "calvert"

	include ApplicationHelper
	include ProjectsHelper

	def index
		@projects = Project.all
	end

	def show
		@project = Project.find(params[:id])
		@features = parse_features
		all_tags = parse_tags(@features)
		@tags = all_tags[0]
		@scenario_tags = all_tags[1]
	end

	def new
		@project = Project.new
	end

	def edit
		@project = Project.find(params[:id])
	end

	def create
		@project = Project.new(project_params)
		if @project.save
			redirect_to @project
		else
			render 'new'
		end
	end

	def update
  	@project = Project.find(params[:id])
  	if @project.update_attributes(project_params)
  		redirect_to projects_path
  	end
	end

	def destroy
		@project = Project.find(params[:id])
  	@project.destroy
  	redirect_to projects_path
	end

	def filter_by_tag
		@project = Project.find(params[:id])
		all_features = parse_features
		all_tags = parse_tags(all_features)
		@tags = all_tags[0]
		@scenario_tags = all_tags[1]
		@features = parse_features_by_tag(params[:tag])

		render 'show'
	end

	def start_test_old
    	@project = Project.find(params[:project_id])
		scenario_names = params[:scenario_names]
    # path = Rails.root.to_s + "/scripts_repo/sample_project"
    project_repo_name = @project.name.downcase.sub(' ','_')
    path = Rails.root.join("scripts_repo/#{project_repo_name}")

		cmd = "bundle exec cucumber #{path}"
    
		scenario_names.each do |s|
			cmd += " -n "
			cmd += "'#{s}'"
		end
		cmd += " -f json" 
		title = "Scenarios: " + scenario_names.join("; ")
		@project.delay.run_test(title, cmd)
		render :nothing => true
	end

	def start_test_for_delayed_job
		@project = Project.find(params[:project_id])
		scenario_names = params[:scenario_names]

		project_repo_name = @project.name.downcase.sub(' ','_')
		path = Rails.root.join("scripts_repo/#{project_repo_name}")
		cmd = "cucumber scripts_repo/iOS/"

		title = "Scenarios: " + scenario_names.join("; ")
		@project.delay.run_test(title, cmd)
		render :nothing => true
	end

	def start_test
		@project = Project.find(params[:project_id])
		scenario_names = params[:scenario_names]

		project_repo_name = @project.name.downcase.sub(' ','_')
		path = Rails.root.join("scripts_repo/#{project_repo_name}")
		ENV['PROJECT_DIR'] = Rails.root.join("scripts_repo/ios").to_s
	    puts ENV['PROJECT_DIR']
	    ENV['DEVICE_TARGET'] = 'iPad - Simulator - iOS 7.0'
	    #result = `cucumber scripts_repo/iOS/ -f json`
	    result = `cucumber scripts_repo/iOS/ -f html`
	    title = "Scenarios: " + scenario_names.join("; ")
	    new_report = @project.reports.create!(:title => title, :content => result)
	    render :nothing => true
	end

	private

	def project_params
    params.require(:project).permit(:name)
  end
end
