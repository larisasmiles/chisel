require "pry-state"
class Paragraph
  attr_reader :text, :html_format

  def initialize(text)
    @text = text
    @html_format = paragraph_markdown
  end

  def paragraph_markdown
    if text.include?("\n")
       text.split("\n")
      middle_text = text.strip
      "<p>\n#{middle_text}\n</p>\n"
    else
      middle_text = text.strip
      "<p>#{middle_text}</p>"
    end
  end
  
end