class Paragraph
  attr_reader :text 

  def initialize(text)
    @text = text
  end

  # def paragraph_markdown
  #  middle_text = text.strip
  #  "<p>\n #{middle_text}\n</p>\n"
  # end
end
