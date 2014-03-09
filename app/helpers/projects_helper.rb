require 'gherkin/formatter/json_formatter'
require 'stringio'
require 'multi_json'

module ProjectsHelper
	def get_project_feature_files
		project_repo_name = @project.name.downcase.sub(' ','_')
		path = Rails.root.join("scripts_repo/#{project_repo_name}/features/*.feature")
		Dir.glob(path)
	end
end
