require 'gherkin/formatter/json_formatter'
require 'stringio'
require 'multi_json'

module ProjectsHelper

	def get_project_feature_files
		path = Rails.root.join("scripts_repo/sample_project/features/*.feature")
		Dir.glob(path)
	end

	def parse_features
		io = StringIO.new
		formatter = Gherkin::Formatter::JSONFormatter.new(io)
		parser = Gherkin::Parser::Parser.new(formatter)

		sources = get_project_feature_files
		sources.each do |file_path|
		  parser.parse(IO.read(file_path), file_path, 0)
		end

		formatter.done
		MultiJson.load(io.string)	
	end

	# data is used to store one feature's html
	# data = ''
	# one_feature_html(MultiJson.load(io.string), data)
	# data.html_safe
	# return html source code for one feature file
	def one_feature_html(o, data)
		if o.class == Array
			o.each do |m|
				one_feature_html(m, data)
			end
			data << '<br/>'
		elsif o.class == Hash
			o.keys.each do |k|
				case k
				when "keyword"
					if o[k] == "Feature" 
						data << (content_tag :span, o[k], class: "key-word") << ": "
					elsif o[k] == "Scenario"
						data << (content_tag :span, o[k], class: "key-word") << ": "
					elsif o[k] == "Given " || o[k] == "And " || o[k] == "Then " || "When "
						data << (content_tag :span, o[k], class: "key-word")
					else
						data << o[k]
					end
				when "name"
					data << "#{o[k]}<br/>"
				when "line", "id", "uri", "elements", "path", "description", "type", "steps", "comments", "value"
				else
					data << k
				end
				one_feature_html o[k], data
			end
		end	
	end
end
