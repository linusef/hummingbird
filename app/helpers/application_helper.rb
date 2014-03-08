module ApplicationHelper
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

	def nav_link(link_text, link_path)
		case link_text
		when "Features" 
  		class_name = (controller_name == "projects" ? 'active	' : '')
  	when "Reports"
  		class_name = (controller_name == "reports" ? 'active' : '')
  	else
  		class_name = ''
  	end

  	content_tag(:li, :class => class_name) do
    	link_to link_text, link_path
  	end
	end
end
