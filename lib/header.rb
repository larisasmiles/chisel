class Header
  attr_reader :text

  def initialize(text)
    @text = text

  end
  
  def header_format(text)
    header_size = text.to_s.count("#")
    middle_text = text.delete("#").strip
    "<h#{header_size}>#{middle_text}</h#{header_size}>\n"
  end
end
