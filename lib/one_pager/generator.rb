module OnePager::Generator

  def self.genrate_one_pager(template, title)
    file_path = File.join(File.dirname(__FILE__), "templates/#{template}.md.erb")
    template = Tilt::ERBTemplate.new(file_path)
    output = template.render(nil, title: title)
  end

end
