require 'gherkin/formatter/json_formatter'
require 'stringio'
require 'multi_json'

module ProjectsHelper
	def get_project_feature_files
		path = Rails.root.join("scripts_repo/sample_project/features/*.feature")
		Dir.glob(path)
	end
end
