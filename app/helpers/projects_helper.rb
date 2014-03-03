require 'gherkin/formatter/json_formatter'
require 'stringio'
require 'multi_json'

module ProjectsHelper
	def parse_features
		io = StringIO.new
		formatter = Gherkin::Formatter::JSONFormatter.new(io)
		parser = Gherkin::Parser::Parser.new(formatter)
		Rails.root.join
		sources = ["scripts_repo/google/features/tip1_declaritive_style_0.feature"]
		sources.each do |s|
		  #path = File.expand_path(File.dirname(__FILE__) + s)
		  path = Rails.root.join(s)
		  parser.parse(IO.read(path), path, 0)
		end

		formatter.done
		data = ''
		features_to_html(MultiJson.load(io.string), data)
		data.html_safe
	end
	def features_to_html(o, data)
		if o.class == Array
			o.each do |m|
				features_to_html(m, data)
			end
		elsif o.class == Hash
			o.keys.each do |k|
				case k.to_s
				when "keyword"
					if o[k] == "Feature" || o[k] == "Scenario"
						data << (content_tag :span, o[k], class: "key-word") << ": "
					elsif o[k] == "Given " || o[k] == "And " || o[k] == "Then " || "When "
						data << (content_tag :span, o[k], class: "key-word")
					else
						data << o[k]
					end
				when "name"
					data << "#{o[k]}<br/>"
				when "line", "id", "uri", "elements", "path", "description", "type", "steps"
				else
					data << k
				end
				features_to_html o[k], data
			end
		end	
	end
end
