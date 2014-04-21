require 'gherkin/formatter/json_formatter'
require 'stringio'
require 'multi_json'

module ProjectsHelper
	def get_project_feature_files
		project_repo_name = @project.name.downcase.gsub(' ','_')
		# by defaulat QuickQA will find assume that scripts_repo has the project root folder (which contains features)
		path = Rails.root.join("scripts_repo/#{project_repo_name}/features/**/*.feature")
		# project root path setting will overwrite default path
		setting = @project.settings.first
		path_setting = @project.settings.first.project_root_path.to_s unless setting.nil?  
		path = "#{path_setting}/features/**/*.feature"

		files = Dir.glob(path)
		files.uniq
	end
end
