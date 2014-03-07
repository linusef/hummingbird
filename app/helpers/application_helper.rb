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
end
